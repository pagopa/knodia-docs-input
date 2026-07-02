Regarding the issuance of bearer access tokens, the **Knodes** implement [RFC 7521](https://datatracker.ietf.org/doc/html/rfc7521). The use of the issued bearer access tokens by a **Consumer** for a **Producer**'s **Cross-Border E-Service** or a **Knode**'s **Knodia API** is achieved by applying [RFC 6750](https://datatracker.ietf.org/doc/html/rfc6750).

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

> For requests to issue an access token for the **Knodia API**, the `purposeId` claim is not present.

After constructing a valid client assertion, it must be signed with your private key.

## Requesting a bearer access token

The **Consumer** makes a bearer access token request by performing an HTTP POST request to the authorization server URL.

The HTTP request body must include the following parameters:

| Parameter | Description |
|---|---|
| `client_id` | The **Consumption Keychain** ID, which can be retrieved from the **Knode** UX |
| `client_assertion` | The signed client assertion created by the Consumer |
| `client_assertion_type` | Always `urn:ietf:params:oauth:client-assertion-type:jwt-bearer` |
| `grant_type` | Always `client_credentials` |

If the authorization server's checks are successful, a bearer access token is issued in the response. Specifically, the response is a JSON object that complies with the following JSON Schema:

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
- `access_token` is the JWT Compact Form of the issued bearer access token.
- `expires_in` is the number of seconds the token remains valid.
- `token_type` is always `Bearer`.

## Requesting data from the Producer

The **Consumer**'s client implements the OpenAPI specification indicated by the **Producer**'s **Cross-Border E-Service** and uses the issued bearer access token in the HTTP `Authorization` header, specifying the `Bearer` scheme (e.g., `Authorization: Bearer <access_token>`).
