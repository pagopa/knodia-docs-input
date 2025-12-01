*Knodes* must support Demonstrating Proof of Possession (hereinafter, *DPoP*) to strengthen security of access to *E-Services*. *DPoP* requires *Consumers* to demonstrate to *Producers* that they possess their own private cryptographic material. This makes stolen *access tokens* unusable by unauthorized subjects.

The *Producer* can request *DPoP* to apply for a *Cross-Border E-Service* when it creates the *Cross-Border E-Service*. In this case, *Consumers* must request *DPoP*-bound *access tokens* from the *Producer Knode*.

To request a *DPoP*-bound *access token*, the *Consumer* includes in the request a *DPoP* proof, sealed with its own private cryptographic material, and provides the corresponding public cryptographic material, hereinafter the proof key.

The *Producer Knode* verifies the *DPoP* proof with the proof key. It it is valid, it issues an *access token* which includes a reference to it, binding the *access token* to it. Thus, the *access token* cannot be used by subjects that do not possess the private cryptographic material associated to the proof key.

To call the *Cross-Border E-Service* with a *DPoP*-bound *access token*, the *Consumer* attaches a *DPoP* proof to every request. The *Producer* must verify the signature of the *DPoP* proof against the proof key to which the *access token* is bound.

The implementation details of the token endpoint to issue *DPoP*-bound *access token*, which the *Producer Knodes* must implement, shall be part of the specification of *Knodia* produced by the Federated Consortium, as described in § [Considerations on the governance of Knodia](./05-11-00_federation-governance.md).

***Consumers* must ensure the following requirements are met:**

- **They must request an *DPoP*-bound *access token* to be issued to the *Producer Knode* corresponding to the *Cross-Border E-Service* of interest and in relation to a specific active *Purpose Statement*.**
- **They must use the *DPoP*-bound *access token* issued by the *Producer Knode* and a *DPoP* proof to request access to the *Producer* for the *Cross-Border E-Service* of interest.**

***Producer Knodes* must ensure the following requirements are met:**

- **They must implement the token endpoint that issues *DPoP*-bound *access tokens*, following the specifications of *Knodia*, and make it available to *Consumers*.**

***Producers* must ensure the following requirements are met:**

- **They must validate the *DPoP*-bound *access token* and the *DPoP* proof sent by the *Consumer* before granting access to their *Cross-Border E-Service*.**
