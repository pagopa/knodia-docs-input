# Actions requested by the national regulatory framework

#### Additional actions for Agreement Requests

As mentioned in § [Agreement Request](./05-05-01_agreement.md), additional actions may be needed to activate an *Agreement Request*. This is at the discretion of the *Producer Interop Node*. It makes it possible for *Interop Nodes* to implement any additional steps demanded by the national regulatory framework they are subject too: for example, request additional information from the *Consumer* to complete the proceedings.

For this reason, after the request is submitted by the *Consumer*, the *Consumer Interop Node* must monitor state change events for the *Agreement Request* using the *Federated API*. See § [Distribution of knowledge between Interop Nodes](./05-11-01_distribution-of-knowledge.md) for more details.

Before the *Agreement Request* reaches the active state, it can transit through one or more of these states:

- additional action requested by a *Producer* *Operator*, e.g., manual approval;
- additional action requested by a *Consumer* *Operator*.

The former case is managed internally to the *Producer Interop Node*.

In the latter case, the *Producer Interop Node* must include, in the state change event, a link and any additional elements needed for the *Customer* to be able to carry out the requested actions.

When the *Producer Interop Node* forwards such a link, it must ensure that its user interface supports at least the common language accepted by the *Cross-Border Federation*.

When the *Consumer Interop Node* receives the link and any additional elements, it must provide them to *Consumer* *Operators* to let them carry out the requested actions.

The following service blueprint defines the flow of activities carried out by the subjects, *Operators* and *Interop Nodes*, in this case.

![](../resources/blueprint-agreement-request-eidas-confirmation-additional-steps.svg)

***Producer Interop Nodes* must ensure the following requirements are met:**

- **If additional actions are needed by the *Consumer*, it must notify them to the interested *Consumer Interop Node* using the *Federated API*, including the link and any additional elements needed to carry out the requested actions.**

***Consumer Interop Nodes* must ensure the following requirements are met:**

- **They must retrieve from the *Producer Interop Node*, using the *Federated API*, the link and any additional elements needed to carry out the requested actions.**
- **They must forward the link and any additional elements received from the *Producer Interop Node* to the *Consumer*.**

#### Additional information for Purpose Statements

As mentioned in § [Purpose Statement](./05-05-02_purpose.md), additional information beyond the default can be needed for the *Purpose Statement*. This is at the discretion of the *Producer Interop Node*, to comply with the national regulatory framework they are subject too.

This request for additional information occurs using a custom form defined by the *Producer Interop Node*. See § [Purpose Statement](./05-05-02_purpose.md) for the service blueprint and the description of how this form is transmitted between *Interop Nodes* when the statement must be made by the *Consumer*.

This form:

- must be defined following a format shared within the *Cross-Border Federation* which supports multiple languages;
- must be made available by the *Producer Interop Node* at least in the common language accepted by the *Cross-Border Federation*;
- must accept responses in any of the languages it is made available in.

Defining the standard format of this form, which every *Interop Node* must follow, is a responsibility of the *Federation Consortium* mentioned in § [Configuration of the federation of Interop Nodes](./05-11-02_federation-configuration.md).

***Producer Interop Nodes* must ensure the following requirements are met:**

- **Use the standard format of the *Cross-Border Federation* to define the form which *Customers* of *Cross-Border E-Services* must fill in.**
- **Provide the form to *Consumer Interop Nodes* using the *Federated API*.**

***Consumer Interop Nodes* must ensure the following requirements are met:**

- **They must retrieve the form from the *Producer Interop Node* using the *Federated API*.**
- **They must let *Consumer* *Operators* view and fill in the form.**
