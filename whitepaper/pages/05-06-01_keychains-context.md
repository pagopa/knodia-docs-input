A *Consumer* who has an active *Agreement Request* and an active *Purpose Statement* for a *Cross-Border E-Service* has all prerequisites to be able to consume it. The *Producer Interop Node* can therefore issue an *access token* which the *Consumer* can use to access the *Cross-Border E-Service*’s API.

The *Consumer* can request an *access token* using an API on the *Producer Interop Node*, referred to hereinafter as token endpoint. Authentication of requests to the token endpoint (that is, verification that they originate from the IT system of the *Consumer* in *Cross-Border Federation*) complies with the OAuth2 framework. Specifically, it requires the *Consumer* to prepare a client assertion, i.e., a JSON web token (JWT):

- which is sealed with an Electronic Seal created using the private cryptographic material in the *Consumer*’s possession;
- which contains the information needed for the *access token* request, for which see § [Issuance of E-Service access tokens](./05-07-00_tokens.md).

The token endpoint authenticates the *Consumer* by verifying the signature of the client assertion using the *Consumer*’s public cryptographic material. Therefore, the *Consumer* must deposit the public cryptographic material in a dedicated keychain, the *Consumer Keychain*, so that the *Producer Interop Node* can access it.
