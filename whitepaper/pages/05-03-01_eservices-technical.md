*Cross-Border E-Services* within *Knodia* are characterized by:

- An identifier which is unique within the *Knodia Domain*.
- A formal description of the application programming interface (hereinafter API), specified in an interface description language recognized in *Knodia* (for example, an OpenAPI specification for HTTP APIs).
- The duration and audience to be used by the *Knode* when issuing *access tokens* to *Consumers*.
- The quotas set by the *Producer* defining the maximum number of requests in a given unit of time:
  - Total maximum cross-border requests.
  - Total maximum cross-border requests from a single *Knode*.
  - Total maximum cross-border requests from a single *Consumer*.
- The mode of data transmission:
  - From the *Producer* to the *Consumer* (hereinafter *Provide-Data*).
  - From the *Consumer* to the *Producer* (hereinafter *Receive-Data*).
- Whether, to submit *Agreement Requests* and *Purpose Statements* for the *Cross-Border E-Service*, the *Consumer* *Operator* must confirm the submission via *eIDAS login* to the *Producer Knode*.
- Whether *Consumers* can access the *Producer Knode*’s Signal Hub functionality for this *E-Service* (for details, see § [Distribution of data change signals (Signal Hub)](./05-10-02_signal-hub.md)).

***Knodes* must ensure the following requirement is met:**

- **Published *Cross-Border E-Services* ensure the indicated technical characteristics.**
