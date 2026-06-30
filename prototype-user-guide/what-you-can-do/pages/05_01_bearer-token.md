Regarding the issuance of access token bearer i **Knodes** implemented [rfc7521](https://datatracker.ietf.org/doc/html/rfc7521). The use of issued access tokens by a **Consumer** for a **Producer**'s **Cross-Border E-service** is achieved by applying [rfc6750](https://datatracker.ietf.org/doc/html/rfc6750).

It is assumed that the Consumer has:
- created an e-service client;
- generated at least one set of cryptographic material and uploaded the corresponding public key to **Knode**;
- associated the client with the purpose for which it wishes to obtain or send data to the **Producer**'s **Cross-Border E-service**.

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
| aud | the Knode audience (**XXXX** for Orion Knode and **YYYY** for Lynx Knode )|
| jti | a unique random ID assigned by the **Consumer** creating the token |
| iat | the timestamp reporting the date and time the token was created, expressed in UNIX epoch|
| exp | the timestamp reporting the token expiration date and time, expressed in UNIX epoch |
| purposeId | the ID of **Purpose statement** which you can retrieve from the **Knode** UX |

After constructing a valid client assertion, it must be signed with your private key.

## Request an access token
The **Consumer** makes an access token request by performing an HTTP GET request to the authorization server URL.

The endpoint URL where the authorization server is located varies depending on the Knode:
- for Orion Knode: **XXXXX**;
- for Lynx Knode: **XXXXX**.

The HTTP request body must include the following parameters:
| parameter | description |
|---|---|
| client_id | the **Consumption Keychain** which you can retrieve from the **Knode** UX |
| client_assertion | the signed client assertion created |
| client_assertion_type | always **urn:ietf:params:oauth:client-assertion-type:jwt-bearer** |
| grant_type | always **client_credentials** |

If the authorization server's checks are successful, an access token is issued in response. Specifically, the response is a JSON that follows the following JSON Schema:

```json
{ 
    "$schema": 
        "http://json-schema.org/draft-04/schema#",
        "type": "object",
        "properties": {
            "access_token": {
                "type": "string"
            },
            "expires_in": {
                "type": "integer"
            }
        },
        "required": [
            "access_token",
            "expires_in"
        ]
}
```

where:
- access_token is the JWT Compact Form of the issued access token
- expires_in is the number of seconds the token is valid

## Request data from the Producer
The **Consumer**'s client implements the OpenAPI indicated by the **Producer**'s **Cross-Border E-service** and uses the access token issued in the http header Authorization indicating the bearer scheme (e.g. Authorization: Bearer <access_token>).
