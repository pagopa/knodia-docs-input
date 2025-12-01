*E-Services* within *Knodia* are characterized by:

*Knodes* must allow *Producers* to associate *E-Services* to categories that are shared within *Knodia*. This is intended to simplify searching for services, using categories that are standardized across all *Interoperability Domains*.

By way of example, consider the need to identify the *Cross-Border E-Services* that provide data ona citizen’s permanent residency. Several *Knodes* will include *E-Services* that provide this data, and *Knodes* can translate this concept as relevant in each *Interoperability Domain*: “residenza” for Italy, “Wohnsitz” for Germany, etc.

- an identifier which is unique within the *Interoperability Domain*;
- a formal description of the application programming interface (hereinafter API), specified in an interface description language recognized in *Knodia* (for example, an OpenAPI specification for HTTP APIs);
- the duration and audience to be used by the *Knode* when issuing *access tokens* to *Consumers*;
- the quotas set by the *Producer* defining the maximum number of requests in a given unit of time:
  - total maximum cross-border requests;
  - total maximum cross-border requests from a single *Knode*;
  - total maximum cross-border requests from a single *Consumer*;
- mode of data transmission:
  - from the *Producer* to the *Consumer* (hereinafter *Provide-Data*);
  - from the *Consumer* to the *Producer* (hereinafter *Receive-Data*);
- whether, to submit *Agreement Requests* and *Purpose Statements* for the *Cross-Border E-Service*, the *Consumer* *Operator* must confirm the submission via *eIDAS login* to the **Producer* *Knode**;
- whether *Consumers* can access to the *Producer Knode*’s Signal Hub functionality (for details, see § [Distribution of data change signals (Signal Hub)](./05-10-02_signal-hub.md)).

***Knodes* must ensure the following requirement is met:**

- **Published *E-Services* ensure the indicated technical characteristics.**
