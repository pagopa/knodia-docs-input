Using an Interop Keychain, a *Confederate Organization* can request an interop *access token* to the target *Interop Node*. To do this, it must send a request with a client assertion, as described in § [Issuance of E-Service access tokens](./05-07-00_tokens.md), with the following differences:

- The audience must be one of those declared in the *Interop Node*'s API specification.
- No *Purpose Statement* identifier is included.
- It must include the identifier of the *Interop Node* of the requester *Confederate Organization*, on which the Interop Keychain is stored. This allows the target *Interop Node* to retrieve the Keychain data using the *Federated API*, to verify the client assertion.

***Interop Nodes* must ensure the following requirements are met:**

- **They must make the public cryptographic material deposited in *Interop Keychains* available to other *Interop Nodes* through the *Federated API*.**
- **They must retrieve the public cryptographic material of *Interop Keychains* from other *Interop Nodes* to verify *client assertions*.**
- **They must issue interop *access tokens* to *Confederate Organizations* of the *Cross-Border Federation*, with write, edit, or delete operations only if the declaration responsibility was made by an *Operator* of the *Organization*.**
