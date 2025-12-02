Using an *Interop Keychain*, a *Confederate Organization* can request an *interop access token* to the target *Knode*. To do this, it must send a request with a client assertion, as described in § [Issuance of access tokens for Cross-Border E-Services](./05-07-00_tokens.md), with the following differences:

- The audience must be one of those declared in the *Knode*’s API specification.
- No *Purpose Statement* identifier is included.
- It must include the identifier of the *Knode* of the requester *Confederate Organization*, on which the *Interop Keychain* is stored. This allows the target *Knode* to retrieve the *Keychain* data using the *Knodia API*, to verify the client assertion.

***Knodes* must ensure the following requirements are met:**

- **They must make the public cryptographic material deposited in *Interop Keychains* available to other *Knodes* through the *Knodia API*.**
- **They must retrieve the public cryptographic material of *Interop Keychains* from other *Knodes* to verify *client assertions*.**
- **They must issue *interop access tokens* that allow create, edit, or delete operations to *Confederate Organizations* of *Knodia* only if the declaration responsibility was made by an *Operator* of the *Organization*.**
