# Purpose Statement

A *Purpose Statement* is the declaration a *Confederate Organization* makes to assert the lawfulness of processing of personal data received through a *Cross-Border E-Service*, pursuant to Article 6 of the *GDPR*.

A *Purpose Statement* is necessary to enable the *Consumer* to access a *Cross-Border E-Service*, even if the *Producer* has declared that the *Cross-Border E-Service* does not provide or process personal data of natural persons.

This declaration is made:

- for *Provide-Data* *Cross-Border E-Services*, by the *Consumers*, for each *E-Service* they have an active *Agreement Request* for and each processing that will use that *E-Service*;
- for *Receive-Data* *Cross-Border E-Services*, by the *Producer* when publishing the *E-Service*.

Within the *Cross-Border Federation*, *Purpose Statements* are characterized by:

- an identifier which is unique within the *Interoperability Domain*;
- name and description;
- indication of the lawfulness of processing, as a value chosen from the options admitted by Article 6 of Regulation (EU) 2016/679;
- any additional information required by the national regulatory framework to which the *Producer Interop Node* is subject regarding the protection of personal data of natural persons (see § [Actions requested by the national regulatory framework](./05-05-03_national-regulatory-framework.md)).

The *Purpose Statements* must be filled in at least in the common language accepted by the *Cross-Border Federation*.

The *Consumer* must declare the load it expects to put on the *Cross-Border E-Service* in terms of a maximum number of requests per given unit of time. This parameter is useful to the *Producer* to evaluate dimensioning of its technological infrastructure. Specifically:

- for *Provide-Data* *E-Services*, the *Consumer* declares it in each *Purpose Statement* it creates;
- for *Receive-Data* *E-Services*, the *Consumer* declares it by selecting the *Purpose Statement* created by the *Producer*.

Each *Producer Interop Node* may choose to define and carry out checks regarding the load declared by the *Consumer* versus the quotas defined by the *Producer* of the *Cross-Border E-Service*. For example, an *Interop Node* may choose:

- not to perform any check (the load declaration is only used to inform the *Producer*, who can dimension infrastructure accordingly and possibly defer or reject requests in excess of the declared load);
- to prevent creating new *Purpose Statements* if the quotas declared by the *Producer* for that *E-Service* is saturated by existing *Purpose Statements*.

See § [Lifecycle of Purpose Statements](./05-09-03_lifecycle-purpose.md) for more details on the lifecycle of *Purpose Statements*.

***Consumer Interop Nodes* must ensure the following requirements are met:**

- ***Confederate Organizations* can create or select (respectively, for *Provide-Data* or *Receive-Data* *E-Services*) the *Purpose Statements* for *Agreement Requests* and receive notifications related to them.**
- **The *Consumer Interop Node* must forward the request to create a *Purpose Statement* to the *Producer Interop Node* using the *Federated API*.**
- **The *Consumer Interop Node* must receive from the *Producer Interop Node*, using the *Federated API*, evidence on the state of *Purpose Statements* it has created.**

***Producer Interop Nodes* must ensure the following requirements are met:**

- **The *Producer Interop Node* must allow other *Interop Node* to create *Purpose Statements* using the *Federated API* (for *Provide-Data* *E-Services*) or to retrieve existing *Purpose Statements* created by the *Producer* (for *Receive-Data* *E-Services*).**
- **The *Producer Interop Node* must forward to the *Consumer Interop Node*, using the *Federated API*, the state changes of *Purpose Statements* the *Consumer Interop Node* has created.**

#### Purpose Statements for Provide-Data E-Services

A *Consumer* *Operator* may, through the user interface of the *Consumer Interop Node*, make one or more *Purpose Statements* related to an *E-Service* for which it has an active *Agreement Request*.

The *Consumer Interop Node*:

1. requests to the *Consumer* *Operator* to fill in the required information according to the requirements defined in § [Purpose Statement](./05-05-02_purpose.md) above;
2. retrieves from the *Producer Interop Node*, using the *Federated API*, the form for any additional information requested by the national regulatory framework (see § [Actions requested by the national regulatory framework](./05-05-03_national-regulatory-framework.md) for details);
3. provide the form to the *Consumer* *Operator* to fill in;
4. forward the filled-in data to the *Producer Interop Node* using the *Federated API*.

The *Producer Interop Node* creates the *Purpose Statement* and returns its reference to the *Consumer Interop Node*.

The *Consumer Interop Nodes* must *Store* the references:

- of the *Purpose Statement*, as returned by the *Producer Interop Node*, to be able to retrieve its data later using the *Federated API*;
- of the *Cross-Border E-Service* subject of the declaration;
- of the *Producer Interop Node*.

The *Consumer Interop Node* must *Electronically Archive* the information:

- on the *Consumer*, including its *Federated Attributes*.

The *Producer Interop Node* must *Electronically Archive* the information:

- of the *Purpose Declaration*;
- of the *Cross-Border E-Service* subject of the declaration.

The *Producer Interop Node* must *Store* the references:

- of the *Consumer*;
- of the *Consumer Interop Node*.

The default behaviour in the *Cross-Border Federation* is for the *Producer Interop Node* to activate the *Purpose Declaration* simultaneously when it is created.

The *Purpose Statement* can instead need a further confirmation by a *Consumer* *Operator*, if the *Producer* requested it when creating the *Cross-Border E-Service*. In this case, the procedure is equivalent to that described for confirmation of *Agreement Requests* (see § [Agreement Request – Confirmation by the Consumer Operator](./05-05-01_agreement.md#confirmation-by-the-consumer-operator)).

The following service blueprint illustrates the flow of activities carried out by the subject, *Operators* and *Interop Nodes*, in the latter case.

![](../resources/blueprint-purpose-creation-provide-data.svg)

In any case, the *Consumer Interop Node* must monitor state change events of the *Purpose Statement*, using the *Federated API*, and notify them to the corresponding *Consumer*. See § [Distribution of knowledge between Interop Nodes](./05-11-01_distribution-of-knowledge.md) for more details.

*Producer Interop Nodes* must ensure the following requirements are met:

- *Producers* can request explicit confirmation from potential *Consumers* before activating their *Agreement Requests*.
- If a *Producer* requests explicit confirmation, the *Producer Interop Node* returns to interested *Consumer Interop Nodes*, via the *Federated API*, the information needed for *Operators* to fulfil this.
- If any additional information is requested from the *Consumer* in relation to regulation for protection of personal data of natural persons, the *Producer Interop Node* must provide to interested *Customer Interop Nodes*, through the *Federated API*, the form to collect this information and operations to receive the latter form.

*Consumer Interop Nodes* must ensure the following requirements are met:

- *Consumer Interop Nodes* must monitor, using the *Federated API* of the *Producer Interop Nodes*, state changes of *Purpose Statements*, to react when the confirmation is given.
- If any additional information is requested from the *Consumer* in relation to regulation for protection of personal data of natural persons, the *Customer Interop Node* must retrieve the form to collect this information and forward it to the *Producer Interop Node*.

#### Purpose Statements for Receive-Data E-Services

A *Cross-Border E-Service* in the *Receive-Data* mode allows its *Producer* to collect data from *Consumers*. In this case, the *Purpose Statement* must be made by the *Producer*, who is the subject who processes the data.

The *Producer Interop Node* must provide the functionality for *Producers* to fill in the required information according to the requirements defined in § [Purpose Statement](./05-05-02_purpose.md) above.

The *Consumer Interop Node*, when a *Consumer* has an active *Agreement Request* for a *Receive-Data* *Cross-Border E-Service*, must retrieve from the *Producer Interop Node*, using the *Federated API*, the *Purpose Statements* and make them available to the *Consumer*.

The following service blueprint illustrates the flow of activities for purpose creation in the *Receive-Data* case:

![](../resources/blueprint-purpose-creation-receive-data.svg)

***Consumer Interop Nodes* must ensure the following requirements are met:**

- **They must retrieve the *Purpose Statement* made by the *Producer*, using the *Federated API*, and make it available to the *Consumer* on their user interface.**

***Producer Interop Nodes* must ensure the following requirements are met:**

- **They must make the *Purpose Statement* made by the *Producer* available through the *Federated API* to *Consumer Interop Nodes*.**
