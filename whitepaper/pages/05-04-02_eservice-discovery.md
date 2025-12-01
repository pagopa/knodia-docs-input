A potential *Consumer* can search for published *Cross-Border E-Services* through the user interface of their *Consumer Knode*. The user interface of every *Knode* must allow *Operators* of potential *Consumers* to:

- view the *Cross-Border E-Services* provided by a specific *Producer Knode* of interest to the *Consumer*, different from the *Consumer Knode*;
- filter the list of *Cross-Border E-Services* by *Federated Category* (for example, “main address”, to search for *Cross-Border E-Services* that provide data on the main address of residence for citizens in the *Interoperability Domain* represented by the *Producer Knode*).

The *Consumer Knode* must fetch the *Knode Catalogue* data on demand from the *Producer Knode* using the machine-to-machine API defined within *Knodia* and implemented by each *Knode* (hereinafter *Federated API*). See § [Distribution of knowledge between Knodes](./05-11-01_distribution-of-knowledge.md) for details.

The following service blueprint defines the flow of activities carried out by the subjects (*Operators* and *Knodes*) to search for a *Cross-Border E-Service*.

![](../resources/blueprint-eservice-discovery.svg)

***Consumers Knodes* must ensure the following requirements are met:**

- ***Operators* of *Confederate Organizations* can view the *Cross-Border E-Services* of other *Knodes*.**
- ***Operators* of *Confederate Organizations* can filter the *Cross-Border E-Services* of other *Knodes* by *Federated Category*.**
- **The data to display for each *Cross-Border E-Service* is fetched using the *Federated API* from the corresponding *Knode*.**

***Producer Knodes* must ensure the following requirements are met:

- **Published *Cross-Border E-Services* are made available to other *Knodes* via the *Federated API*.**
