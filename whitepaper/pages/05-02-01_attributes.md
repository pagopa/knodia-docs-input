Attributes are characteristics that a *Confederate Organization* may have which determine which E-Services it can submit *Agreement Requests* for. This implements the ABAC (attribute-based access control) model where:

- E-Services are the resources subject to access control, access meaning the right to submit an *Agreement Request*;
- the *Producer* specifies in the consumption requirements of its E-Service which Attributes are required;
- to submit an *Agreement Request* for the *Cross-Border E-Service*, a *Consumer* must possess the Attributes indicated by the *Producer* in the consumption requirements.

The *Cross-Border Federation* requires *Interop Nodes* to manage Attributes for their *Confederate Organizations*.

Each Interoperability Domain which joins the *Cross-Border Federation* must ensure that its *Interop Node* assigns and maintains Attributes which are shared among the *Cross-Border Federation*, hereinafter referred to as *Federated Attributes*.

For example, consider that attributes are needed to identify the administrative divisions of Member State (NUTS). Each *Interop Node* should translate these attributes as befits its Interoperability Domain: e.g., NUTS 1 should translated as “Land” for Germany, NUTS 2 as “Regione” for Italy, etc.

The *Cross-Border Federation* must therefore define and share a controlled vocabulary for *Federated Attributes*. In this example, this controlled vocabulary will contain the attributes “NUTS 1” and “NUTS 2” to identify the first- and second-level administrative divisions. Each *Interop Node* can render the *Federated Attributes* translated into the languages of its Interoperability Domain.

The lifecycle of this controlled vocabulary is a responsibility of the Federation Consortium, as reported in § [Considerations on the governance of the Cross-Border Federation](./05-11-00_federation-governance.md).

*Interop Nodes* must ensure the following requirements are met:

- *Interop Nodes* must associate *Federated Attributes* to *Confederate Organizations* in compliance with its reference regulatory framework.
- *Confederate Organizations* must not be able to modify their assigned *Federated Attributes* on their own.
- Only *Federated Attributes*, defined in the controlled vocabulary, are considered in the *Cross-Border Federation*.
