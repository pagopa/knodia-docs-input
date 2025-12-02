*Attributes* are characteristics that a *Confederate Organization* may have that determine which *Cross-Border E-Services* it can submit *Agreement Requests* for. This implements the ABAC (attribute-based access control) model, where:

- *Cross-Border E-Services* are the resources subject to access control, access meaning the right to submit an *Agreement Request*.
- The *Producer* specifies in the *consumption requirements* of its *Cross-Border E-Service* which *Attributes* are required.
- To submit an *Agreement Request* for the *Cross-Border E-Service*, a *Consumer* must possess the *Attributes* indicated by the *Producer* in the *consumption requirements*.

*Knodia* requires *Knodes* to manage *Attributes* for their *Confederate Organizations*.

Each *Knodia Domain* that joins *Knodia* must ensure that its *Knode* assigns and maintains *Attributes* that are shared among *Knodia*, hereinafter referred to as *Knodia Attributes*.

For example, consider that attributes are needed to identify the administrative divisions of Member States (NUTS). Each *Knode* should translate these attributes as befits its *Knodia Domain*: e.g., NUTS 1 should be translated as “Land” for Germany, NUTS 2 as “Regione” for Italy, etc.

*Knodia* must therefore define and share a controlled vocabulary for *Knodia Attributes*. In this example, this controlled vocabulary will contain the attributes “NUTS 1” and “NUTS 2” to identify the first- and second-level administrative divisions. Each *Knode* can render the *Knodia Attributes* translated into the languages of its *Knodia Domain*.

The lifecycle of this controlled vocabulary is a responsibility of the *Knodia Consortium*, as reported in § [Considerations on the governance of Knodia](./05-11-00_federation-governance.md).

***Knodes* must ensure the following requirements are met:**

- ***Knodes* must associate *Knodia Attributes* with *Confederate Organizations* in compliance with their reference regulatory framework.**
- ***Confederate Organizations* must not be able to modify their assigned *Knodia Attributes* on their own.**
- **Only *Knodia Attributes*, defined in the controlled vocabulary, are considered in *Knodia*.**
