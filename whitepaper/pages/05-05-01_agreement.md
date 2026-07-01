An *Agreement Request* is a digital agreement between a *Consumer* and a *Producer* regarding a *Cross-Border E-Service* produced by the *Producer*. The *Agreement Request* is needed for the *Consumer* to consume the *E-Service*.

For *Provide-Data* *Cross-Border E-Services*, the *Agreement Request* is not sufficient to allow usage of the *E-Service*, since the *Consumer* must also submit the *Purpose Statement* (see § [Purpose Statement](./05-05-02_purpose.md) for more details).

The *Consumer*, after identifying the *Cross-Border E-Service* it intends to consume, can submit an *Agreement Request* for it via the *Consumer Knode* user interface. Using the * Knode-to-Knode API*, the *Consumer Knode* forwards to the *Producer Knode*:

- The identifier of the *Cross-Border E-Service*.
- The identifier of the *Consumer* and its *Knodia Attributes*.

The *Producer Knode* can thus verify whether the *Consumer* satisfies the *consumption requirements* of the *Cross-Border E-Service*. If so, it creates an *Agreement Request*, *Stores* it, and sends its identifier to the *Producer Knode*.

By default, *Knodia* assumes that the *Producer Knode* will activate the *Agreement Request* when it creates it. The following service blueprint outlines the activities performed by the subjects in this case.

![](../resources/blueprint-agreement-request.svg)

Activating an *Agreement Request* may require additional actions depending on the regulatory framework in which the *Producer Knode* operates; see § [Actions requested by the national regulatory framework](./05-05-03_national-regulatory-framework.md).

The *Agreement Request* must be filled in at least in the common language accepted by *Knodia*.

The *Consumer Knode* must monitor state change events to the *Agreement Request* using the * Knode-to-Knode API* and notify the corresponding *Consumer*. See § [Distribution of knowledge between Knodes](./05-11-01_distribution-of-knowledge.md) for more details.

The *Consumer Knode* must *Store* the references (identifiers) of:

- The *Agreement Request*, as returned by the *Producer Knode*, so it can later fetch its details using the * Knode-to-Knode API*.
- The *Cross-Border E-Service* involved in the *Agreement Request*.
- The *Producer Knode*.

The *Consumer Knode* must *Electronically Archive* the information on:

- The *Consumer*, including its *Knodia Attributes*.

The *Producer Knode* must *Electronically Archive* the information on:

- The *Agreement Request*.
- The *Cross-Border E-Service* involved in the *Agreement Request*.

The *Producer Knode* must *Store* the references (identifiers) of:

- The *Consumer*.
- The *Consumer Knode*.

Each *Producer Knode* must update the state of each *Agreement Request* it has created in response to:

- Changes to the *Cross-Border E-Service* originated by the Producer.
- Changes to the *Knodia Attributes* of the *Consumer*, obtained by monitoring events using the * Knode-to-Knode API* of the *Consumer Knode* (see § [Distribution of knowledge between Knodes](./05-11-01_distribution-of-knowledge.md) for more details).

Specifically, the *Agreement Request* must be suspended if the *Consumer*’s *Knodia Attributes* no longer satisfy the *consumption requirements* of the *Cross-Border E-Service*.

Within *Knodia*, for each *E-Service* and *Consumer*, there can be at most one *Agreement Request*.

See § [Lifecycle of Agreement Requests](./05-09-02_lifecycle-agreement.md) for more details on the lifecycle of *Agreement Requests*.

***Consumer Knodes* must ensure the following requirements are met:**

- ***Confederate Organizations* can submit *Agreement Requests* for *E-Services* and receive notifications concerning these *Agreement Requests*.**
- **The *Knode* uses the * Knode-to-Knode API* of the *Producer Knode* to forward the request to create an *Agreement Request*.**
- **The Knode uses the * Knode-to-Knode API* to receive evidence from the *Producer Knode* about the state of the created *Agreement Requests*.**
- **Changes in the *Knodia Attributes* of *Confederate Organizations* are made available to *Producer Knodes* via the * Knode-to-Knode API*.**

***Producer Knodes* must ensure the following requirements are met:**

- ***Consumer Knode* can submit an *Agreement Request* using the * Knode-to-Knode API*.**
- **The state of the *Agreement Request* is kept up to date.**
- **Changes in the state of *Agreement Requests* are made available to the *Consumer Knodes* that created them via the * Knode-to-Knode API*.**

# Confirmation by the Consumer Operator

The *Producer* can optionally configure the *Cross-Border E-Service* to request an *Operator* of the *Consumer* to confirm the submission of an *Agreement Request* on the *Producer Knode*.

This allows the *Producer Knode* to *Electronically Archive*, for an *Agreement Request*, the explicit confirmation of an *Operator* of the *Consumer*, together with the request received from the *Consumer Knode*.

In this case, when the *Producer Knode* creates the *Agreement Request*, it must send to the *Consumer Knode* (together with the identifier of the *Agreement Request*):

- A link to its user interface that a *Consumer* *Operator* must use to confirm the operation on the *Producer Knode*.
- An (unforgeable) secret token that the aforementioned *Operator* must provide to the *Producer Knode*.

To confirm submission of an *Agreement Request*, an *Operator* of the *Consumer* must follow the link, authenticate to the *Producer Knode* user interface via *eIDAS login*, and provide the secret token.

The *Consumer Knode* is responsible for providing the link and secret token only to the *Operators* of the *Consumer* who are authorized in its domain to perform this confirmation.

After confirmation, if no other action is needed, the *Producer Knode* activates the *Agreement Request*. This case is illustrated in the following service blueprint.

![](../resources/blueprint-agreement-request-eidas-confirmation.svg)

If the regulatory framework applicable to the *Producer Knode* requires additional actions, the *Producer Knode* sets the *Agreement Request* state accordingly (see § [Actions requested by the national regulatory framework](./05-05-03_national-regulatory-framework.md)).

***Producer Knodes* must ensure the following requirements are met:**

- ***Producers* can request explicit confirmation from potential *Consumers* before activating their *Agreement Requests*.**
- **If a *Producer* requests explicit confirmation, the *Producer Knode* returns to interested *Consumer Knodes*, via the * Knode-to-Knode API*, the information needed for *Operators* to fulfil this.**

***Consumers Knodes* must ensure the following requirements are met:**

- **The *Consumer Knode* must monitor state changes in the *Agreement Request* using the * Knode-to-Knode API* to detect when confirmation has occurred.**
- **The *Consumer Knode* must forward to interested consumers the information needed to fulfil the *Producer*’s explicit confirmation request, received from the *Producer Knode*.**
