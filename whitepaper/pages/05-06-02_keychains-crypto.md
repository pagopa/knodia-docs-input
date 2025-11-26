# Management of cryptographic material

### Management of cryptographic material

The *Consumer Keychain* is the digital container in which the *Consumer* deposits the public cryptographic material corresponding to the Electronic Seals it uses to seal *access token* requests to consume E-Services.

Each *Consumer* creates and manages its *Consumer Keychains* on its own *Consumer Interop Node*, using the latter's user interface. The *Consumer Interop Node* must make *Consumer Keychains* available through the *Federated API* so a *Producer Interop Node* can retrieve the cryptographic material needed for verification. See § [Issuance of E-Service access tokens](./05-07-00_tokens.md) for more details.

This architectural choice lets each *Interop Node* be fully autonomous in managing the public cryptographic material of its onboarded *Confederate Organizations*. Therefore, this material need to be distributed and stored on different nodes, which would be more complex and could increase the risk of misalignment.

The user interface of each *Consumer Interop Node* must enable *Consumer* *Operators* to:

- create a *Consumer Keychain*;
- deposit in the *Consumer Keychain* the aforementioned public cryptographic material (one or more public keys).

*Interop Nodes* must support indifferently to deposit X.509 certificates or public keys as public cryptographic material in *Consumer Keychains*.

The *Consumer Interop Node* must manage the lifecycle of the cryptographic material if the *Operator* that has deposited it loses authorization rights within the *Confederate Organization* (for example, removing all keys deposited by an *Operator* who no longer has access to the *Confederate Organization*).

I *Consumer Interop Nodes* devono rispettare i seguenti requisiti:

 rendere disponibili ai propri Aderenti la gestione dei Keychain;  
 rendere disponibile, tramite API Federata, ai *Producer Interop Nodes* il materiale crittografico pubblico depositato dai *Consumer*.

I *Producer Interop Nodes* devono rispettare i seguenti requisiti:

 recuperare, tramite API Federata, dai *Consumer Interop Nodes* il materiale crittografico pubblico dei *Consumer* per verificare le client assertion degli stessi.
