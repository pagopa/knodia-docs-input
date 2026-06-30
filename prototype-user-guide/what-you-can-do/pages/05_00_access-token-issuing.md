To access an **Cross-Border E-service**, after completing the access request (**Authorization request** and **Purpose Statement**) and associating a **Consumption Keychain** with the declared purposes, the **Consumer** can request the issuing of an access token to the **Knode** where the **Producer** is onboarded.

The sequence diagram below shows the steps taken in the best case.
```mermaid
sequenceDiagram
    autonumber

    participant C as Consumer
    participant KP as Producer Knode
    participant CP as Consumer Knode
    participant P as Producer

    C->>C: creates client assertion and signs with the private key in his possession 
    C->>KP: use signed client assertion to request access token
    KP->>CP: retrieve the Consumer's public key
    CP-->>KP: return the Consumer's public key
    KP->>KP: verify the client assertion signature to identify the Consumer
    KP->>KP: use client assertion to check the possibility of issuing an access token 
    KP-->>C: issues signed access tokens for the purpose indicated in the request
    C->>P: use token to access the Cross-Border E-Service API 
    P->>P: verify that the access token is signed by the Consumer Knode
    P->>P: verify the correctness of the token access in relation to the Consumer's request
    P-->>C: responds to the Consumer's request 
```

The **Signed Client Assertion** created by the **Consumer** and the **Signed Access Token** issued by the **Producer Knode** are JWT whose claims are determined by the nature of the access token (**Bearer** or **DPoP**) selected for the **Cross-Border E-service**.