# Interop access tokens

Using an Interop Keychain, a *Confederate Organization* can request an interop *access token* to the target *Interop Node*. To do this, it must send a request with a client assertion, as described in § [Issuance of E-Service access tokens](./05-07-00_tokens.md), with the following differences:

- The audience must be one of those declared in the *Interop Node*'s API specification.
- No *Purpose Statement* identifier is included.
- It must include the identifier of the *Interop Node* of the requester *Confederate Organization*, on which the Interop Keychain is stored. This allows the target *Interop Node* to retrieve the Keychain data using the *Federated API*, to verify the client assertion.

Gli *Interop Nodes* devono rispettare i seguenti requisiti:

 rendere disponibile, tramite API Federata, ad altri *Interop Nodes*, il materiale crittografico pubblico depositato nei Keychain Interop;  
 recuperare, tramite API Federata, da altri *Interop Nodes*, il materiale crittografico pubblico dei Keychain Interop per verificare le client assertion;  
 emettere *access token* interop agli Aderenti della Federazione Transfrontaliera, con grant di scrittura, modifica e cancellazione solo in presenza di dichiarazione di responsabilità da parte di un *Operator*e degli stessi.
