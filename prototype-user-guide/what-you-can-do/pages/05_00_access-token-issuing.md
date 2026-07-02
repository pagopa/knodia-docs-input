To access a **Cross-Border E-Service**, after completing the access request (**Authorization Request** and **Purpose Statement**) and associating a **Consumption Keychain** with the declared purposes, the **Consumer** can request the issuance of an access token from the **Knode** where the **Producer** is onboarded.

The sequence diagram below shows the steps taken in the standard flow.

```mermaid
sequenceDiagram
    autonumber

    participant C as Consumer
    participant KP as Producer Knode
    participant CP as Consumer Knode
    participant P as Producer

    C->>C: Creates client assertion and signs it with the private key in its possession 
    C->>KP: Uses signed client assertion to request access token
    KP->>CP: Requests the Consumer's public key
    CP-->>KP: Returns the Consumer's public key
    KP->>KP: Verifies the client assertion signature to identify the Consumer
    KP->>KP: Evaluates the client assertion to check eligibility for an access token 
    KP-->>C: Issues a signed access token for the purpose specified in the request
    C->>P: Uses token to access the Cross-Border E-Service API 
    P->>P: Verifies that the access token is signed by the Producer Knode
    P->>P: Verifies the token claims and permissions in relation to the Consumer's request
    P-->>C: Responds to the Consumer's request 
```

The **Signed Client Assertion** created by the **Consumer** and the **Signed Access Token** issued by the **Producer Knode** are JWTs whose claims are determined by the nature of the access token (**Bearer** or **DPoP**) selected for the **Cross-Border E-Service**.

The following table shows the parameters related to the authorization servers of the two **Knodes** implemented in the **Knodia Prototype**.

| Knode | Service Name | URL | Audience |
|---|---|---|---|
| Lynx | ESERVICE AUTH SERVER | `https://auth.lynx.test.knodia.com/token` | `auth.lynx.test.knodia.com/token` |
| Lynx | KNODE_API AUTH SERVER | `https://auth.lynx.test.knodia.com/knodeApiToken` | `auth.lynx.test.knodia.com/knodeApiToken` |
| Orion | ESERVICE AUTH SERVER | `https://auth.orion.test.knodia.com/token` | `auth.orion.test.knodia.com/token` |
| Orion | KNODE_API AUTH SERVER | `https://auth.orion.test.knodia.com/knodeApiToken` | `auth.orion.test.knodia.com/knodeApiToken` |

The API documentation for the Authorization Servers is available at:
- For Lynx: [https://auth.lynx.dev.knodia.com/docs](https://auth.lynx.dev.knodia.com/docs)
- For Orion: [https://auth.orion.dev.knodia.com/docs](https://auth.orion.dev.knodia.com/docs)
