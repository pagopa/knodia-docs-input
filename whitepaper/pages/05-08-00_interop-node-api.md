Every *Knode* must allow the *Confederate Organizations* of other *Knodes* to access the functionality offered in its user interface also through a machine-to-machine API. This allows *Confederate Organizations* to manage entities (e.g., *Cross-Border E-Services*, *Agreement Requests*, *Purpose Statements*) programmatically.

This API can be considered analogous to a *Cross-Border E-Service* produced by the manager of the *Knode* and which *Confederate Organizations* within *Knodia* can consume. Access is regulated similarly to *Cross-Border E-Services*, except that *Agreement Requests* and *Purpose Statements* are not needed: the agreement between the parties has implicitly occurred during the onboarding of the *Confederate Organization* to *Knodia*. However, *Confederate Organizations* must still create keychains to request *access tokens* for these APIs.

The implementation details of the machine-to-machine API for *Confederate Organizations*, which the *Producer Knodes* must implement, shall be part of the specification of *Knodia* produced by the Federated Consortium, as described in § [Considerations on the governance of Knodia](./05-11-00_federation-governance.md).

***Knodes* must ensure the following requirement is met:**

- **They must provide machine-to-machine APIs to the *Confederate Organizations* of *Knodia*.**
