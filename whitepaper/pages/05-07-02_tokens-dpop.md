# Authorization with proof of possession

*Interop Nodes* must support Demonstrating Proof of Possession (hereinafter, *DPoP*) to strengthen security of access to E-Services. *DPoP* requires *Consumers* to demonstrate to *Producers* that they possess their own private cryptographic material. This makes stolen *access tokens* unusable by unauthorized subjects.

The *Producer* can request *DPoP* to apply for a *Cross-Border E-Service* when it creates the *Cross-Border E-Service*. In this case, *Consumers* must request *DPoP*-bound *access tokens* from the *Producer Interop Node*.

To request a *DPoP*-bound *access token*, the *Consumer* includes in the request a *DPoP* proof, sealed with its own private cryptographic material, and provides the corresponding public cryptographic material, hereinafter the proof key.

The *Producer Interop Node* verifies the *DPoP* proof with the proof key. It it is valid, it issues an *access token* which includes a reference to it, binding the *access token* to it. Thus, the *access token* cannot be used by subjects that do not possess the private cryptographic material associated to the proof key.

To call the *Cross-Border E-Service* with a *DPoP*-bound *access token*, the *Consumer* attaches a *DPoP* proof to every request. The *Producer* must verify the signature of the *DPoP* proof against the proof key to which the *access token* is bound.

The implementation details of the token endpoint to issue *DPoP*-bound *access token*, which the *Producer Interop Nodes* must implement, shall be part of the specification of the *Cross-Border Federation* produced by the Federated Consortium, as described in § [Considerations on the governance of the Cross-Border Federation](./05-11-00_federation-governance.md).

I *Consumer* devono rispettare i seguenti requisiti:

 richiedere l’emissione di un *access token* *DPoP*, includendo una *DPoP* proof, al *Producer Interop Node* relativo all’E-Service Transfrontaliero di interesse in relazione ad una specifica Dichiarazione di Finalità attiva;  
 utilizzare l’accesso token *DPoP* emesso dal *Producer Interop Node* specifico e una *DPoP* proof per richiedere al *Producer* l’accesso all’E-Service Transfrontaliero di interesse.

I *Producer Interop Nodes* devono rispettare i seguenti requisiti:

 implementa il token endpoint per l’emissione degli *access token* *DPoP*, nel rispetto delle specifiche della Federazione Transfrontaliero, e lo rende disponibile ai *Consumer*.

I *Producer* devono rispettare i seguenti requisiti:

 validare l’*access token* *DPoP* e la *DPoP* proof inoltrati dai *Consumer* prima di dare accesso ai propri E-Service Transfrontalieri.
