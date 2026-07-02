Regarding the issuance of DPoP access tokens, the **Knodes** implement [Section 5 of RFC 9449](https://datatracker.ietf.org/doc/html/rfc9449#name-dpop-access-token-request). The use of the issued DPoP access tokens by a **Consumer** for a **Producer**'s **Cross-Border E-Service** is achieved by applying [Section 7 of RFC 9449](https://datatracker.ietf.org/doc/html/rfc9449#name-protected-resource-access).

It is assumed that the **Consumer** has:
- Created an E-Service client.
- Generated at least one set of cryptographic material and uploaded the corresponding public key to the **Knode** within the **Consumption Keychain**.
- Associated the **Consumption Keychain** with the purpose for which it wishes to obtain data from or send data to the **Producer**'s **Cross-Border E-Service**.

## Generating the client assertion

The client assertion is a JWT with a HEADER and a PAYLOAD containing the following claims, respectively.

### HEADER

| Claim | Meaning |
|---|---|
| `kid` | The ID of the key used to sign the assertion |
| `alg` | Always `RS256` |
| `typ` | Always `JWT` |

### PAYLOAD

| Claim | Description |
|---|---|
| `iss` | The ID of the **Consumption Keychain**, which can be retrieved from the **Knode** UX |
| `sub` | The ID of the **Consumption Keychain**, which can be retrieved from the **Knode** UX |
| `aud` | The Knode audience |
| `jti` | A unique random ID assigned by the **Consumer** creating the token |
| `iat` | The timestamp indicating the token creation date and time, expressed in UNIX epoch ([RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339)) |
| `exp` | The timestamp indicating the token expiration date and time, expressed in UNIX epoch ([RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339)) |
| `purposeId` | The ID of the **Purpose Statement**, which can be retrieved from the **Knode** UX |

After constructing a valid client assertion, it must be signed with your private key.

## Generating the DPoP proof for the Authorization Server

It is assumed that the **Consumer** has generated a set of ephemeral cryptographic material to sign the DPoP proof.

The **DPoP proof** is a JWT with a HEADER and a PAYLOAD containing the following claims, respectively.

### HEADER

| Claim | Meaning |
|---|---|
| `alg` | Always `RS256` |
| `typ` | Always `dpop+jwt` |
| `jwk` | The generated ephemeral public key in JWK format |

### PAYLOAD

| Claim | Description |
|---|---|
| `htm` | Always `POST` |
| `htu` | Always the Authorization Server URL |
| `jti` | A unique random ID assigned by the **Consumer** creating the token |
| `iat` | The timestamp indicating the token creation date and time, expressed in UNIX epoch ([RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339)) |

After constructing a valid **DPoP proof**, it must be signed with your ephemeral private key.

## Requesting a DPoP access token

The **Consumer** makes a DPoP access token request by performing an HTTP POST request to the Authorization Server URL.

The HTTP request body must include the following parameters:

| Parameter | Description |
|---|---|
| `client_id` | The **Consumption Keychain** ID, which can be retrieved from the **Knode** UX |
| `client_assertion` | The signed client assertion created by the Consumer |
| `client_assertion_type` | Always `urn:ietf:params:oauth:client-assertion-type:jwt-bearer` |
| `grant_type` | Always `client_credentials` |

The generated **DPoP proof** in JWT Compact Form must be included in the HTTP `DPoP` header.

If the Authorization Server's checks are successful, a DPoP access token is issued in the response. Specifically, the response is a JSON object that complies with the following JSON Schema:

```json
{
  "\$schema": "http://json-schema.org/draft-04/schema#",
  "type": "object",
  "properties": {
    "access_token": {
      "type": "string"
    },
    "expires_in": {
      "type": "integer"
    },
    "token_type": {
      "type": "string"
    }
  },
  "required": [
    "access_token",
    "expires_in",
    "token_type"
  ]
}
```

Where:
- `access_token` is the JWT Compact Form of the issued DPoP access token.
- `expires_in` is the number of seconds the token remains valid.
- `token_type` is always `DPoP`.

## Generating the DPoP proof for the Producer

It is assumed that the **Consumer** uses the same ephemeral cryptographic material that was generated for the Authorization Server's DPoP proof.

The **DPoP proof** is a JWT with a HEADER and a PAYLOAD containing the following claims, respectively.

### HEADER

| Claim | Meaning |
|---|---|
| `alg` | Always `RS256` |
| `typ` | Always `dpop+jwt` |
| `jwk` | The generated ephemeral public key in JWK format |

### PAYLOAD

| Claim | Description |
|---|---|
| `htm` | The HTTP method to be used for the request |
| `htu` | The URL where the **Producer** exposes the API |
| `jti` | A unique random ID assigned by the **Consumer** creating the token |
| `iat` | The timestamp indicating the token creation date and time, expressed in UNIX epoch ([RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339)) |
| `ath` | The base64url-encoded SHA-256 hash of the ASCII encoding of the issued access token (`BASE64URL(SHA-256(access_token))`) |

After constructing a valid **DPoP proof**, it must be signed with your ephemeral private key.

## Requesting data from the Producer

The **Consumer**'s client implements the OpenAPI specification indicated by the **Producer**'s **Cross-Border E-Service** and includes the issued DPoP access token in the HTTP `Authorization` header, specifying the `DPoP` scheme (e.g., `Authorization: DPoP <access_token in JWT Compact Form>`), as well as the generated **DPoP proof** for the **Producer** in the HTTP `DPoP` header (e.g., `DPoP: <DPoP proof in JWT Compact Form>`).
