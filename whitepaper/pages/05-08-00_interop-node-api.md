# Interop Node API for Confederate Organizations

Every *Interop Node* must allow the *Confederate Organizations* of other *Interop Nodes* to access the functionality offered in its user interface also through a machine-to-machine API. This allows *Confederate Organizations* to manage entities (e.g., E-Services, *Agreement Requests*, *Purpose Statements*) programmatically.

This API can be considered analogous to a *Cross-Border E-Service* produced by the manager of the *Interop Node* and which *Confederate Organizations* within the *Cross-Border Federation* can consume. Access is regulated similarly to E-Services, except that *Agreement Requests* and *Purpose Statements* are not needed: the agreement between the parties has implicitly occurred during the onboarding of the *Confederate Organization* to the *Cross-Border Federation*. However, *Confederate Organizations* must still create Keychains to request *access tokens* for these APIs.

The implementation details of the machine-to-machine API for *Confederate Organizations*, which the *Producer Interop Nodes* must implement, shall be part of the specification of the *Cross-Border Federation* produced by the Federated Consortium, as described in § [Considerations on the governance of the Cross-Border Federation](./05-11-00_federation-governance.md).

Gli *Interop Nodes* devono rispettare i seguenti requisiti:

 esporre le API m2m agli Aderenti della Federazione Transfrontaliera.
