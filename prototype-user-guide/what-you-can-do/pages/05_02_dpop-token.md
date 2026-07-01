Regarding the issuance of dpop access token bearer the **Knodes** implemented [section 5 of rfc9449](https://datatracker.ietf.org/doc/html/rfc9449#name-dpop-access-token-request). The use of issued dpop access tokens by a **Consumer** for a **Producer**'s **Cross-Border E-service** is achieved by applying [section 7 of rfc9449](https://datatracker.ietf.org/doc/html/rfc9449#name-protected-resource-access).

It is assumed that the **Consumer** has:
- created an e-service client;
- generated at least one set of cryptographic material and uploaded the corresponding public key to **Knode** into **Consumption Keychain**;
- associated the **Consumption Keychain** with the purpose for which it wishes to obtain or send data to the **Producer**'s **Cross-Border E-service**.

## Generating the client assertion
The client assertion is a JWT with a HEADER and PAYLOAD containing the following claim, respectively.

HEADER
| claim | meaning |
|---|---|
| kid | the ID of the key used to sign the assertion |
| alg | always RS256 |
| typ | always JWT |

PAYLOAD
| claim | description |
|---|---|
| iss | the ID of **Consumption Keychain** which you can retrieve from the **Knode** UX |
| sub | the ID of **Consumption Keychain** which you can retrieve from the **Knode** UX |
| aud | the Knode audience |
| jti | a unique random ID assigned by the **Consumer** creating the token |
| iat | the timestamp reporting the date and time the token was created, expressed in UNIX epoch ([rfc3339](https://datatracker.ietf.org/doc/html/rfc3339))|
| exp | the timestamp reporting the token expiration date and time, expressed in UNIX epoch ([rfc3339](https://datatracker.ietf.org/doc/html/rfc3339)) |
| purposeId | the ID of **Purpose statement** which you can retrieve from the **Knode** UX |

After constructing a valid client assertion, it must be signed with your private key.

## Generating DPoP-proof for authorization server
It is assumed that the **Consumer** has generated one set of ephemeral cryptographic material to sign the DPoP-proof.

The **DPoP-proof** is a JWT with a HEADER and PAYLOAD containing the following claim, respectively.

HEADER
| claim | meaning |
|---|---|
| alg | always RS256 |
| typ | always dpop+jwt |
| jwk | ephemeral public key in JWK format generated |

PAYLOAD
| claim | description |
|---|---|
| htm | always POST |
| htu | always authorization server URL |
| jti | a unique random ID assigned by the **Consumer** creating the token |
| iat | the timestamp reporting the date and time the token was created, expressed in UNIX epoch ([rfc3339](https://datatracker.ietf.org/doc/html/rfc3339))|


After constructing a valid **DPoP-proof**, it must be signed with your ephemeral private key.


## Request an dpop access token
The **Consumer** makes an dpop access token request by performing an HTTP GET request to the authorization server URL.

The HTTP request body must include the following parameters:
| parameter | description |
|---|---|
| client_id | the **Consumption Keychain** which you can retrieve from the **Knode** UX |
| client_assertion | the signed client assertion created |
| client_assertion_type | always **urn:ietf:params:oauth:client-assertion-type:jwt-bearer** |
| grant_type | always **client_credentials** |

The **DPoP-proof** generated in JWT Compact Form is included in the DPoP http header.

If the authorization server's checks are successful, an dpop access token is issued in response. Specifically, the response is a JSON that follows the following JSON Schema:

```json
{
    "$schema": "http://json-schema.org/draft-04/schema#",
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

where:
- access_token is the JWT Compact Form of the dpop access token issued
- expires_in is the number of seconds the token is valid
- token_type is always DPoP


## Generating DPoP-proof for Producer
It is assumed that the **Consumer** use the ephemeral cryptographic material used for generating **DPoP-proof** for authorization server.

The **DPoP-proof** is a JWT with a HEADER and PAYLOAD containing the following claim, respectively.

HEADER
| claim | meaning |
|---|---|
| alg | always RS256 |
| typ | always dpop+jwt |
| jwk | ephemeral public key in JWK format generated |

PAYLOAD
| claim | description |
|---|---|
| htm | the http method to which the request will be made |
| htu | the URL where the **Producer** exposes the API |
| jti | a unique random ID assigned by the **Consumer** creating the token |
| iat | the timestamp reporting the date and time the token was created, expressed in UNIX epoch ([rfc3339](https://datatracker.ietf.org/doc/html/rfc3339))|
| ath | the hash of the dpop access token issued (BASE64URL(SHA-256(access_token)))


After constructing a valid **DPoP-proof**, it must be signed with your ephemeral private key.

## Request data from the Producer
The **Consumer**'s client implements the OpenAPI indicated by the **Producer**'s **Cross-Border E-service** and uses the dpop access token issued in the http header Authorization indicating the dpop scheme (e.g. *Authorization: DPOP < access_token in JWT Compact Form >*) and **DPoP-proof** for **Producer** generated in the http header dpop (e.g. *DPoP: < DPoP-proof in JWT Compact Form >*).
