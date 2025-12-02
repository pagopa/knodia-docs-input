The *ModI* considers the digital services (hereinafter *e-services*) created by public entities to ensure access to their data and/or services through the interaction of their IT systems with those of other entities that, in compliance with current legislation, need to interact with them to perform their activities.

The *ModI* critically evolved the *SPCoop* based on experience gained from its application to overcome the factors that limited its diffusion.

The adoption of the *ModI* by Italian public administrations is provided for by the **Decreto Legislativo del 7 marzo 2005, n. 82** and, specifically, by:

- Section 73, paragraph 3-ter, letter b), regarding the adoption of guidelines and rules for cooperation and interoperability;
- Section 50-ter, paragraph 2, regarding the *Piattaforma Digitale Nazionale Dati* (briefly *PDND*) as the technological infrastructure that enables the interoperability of IT systems and databases between public entities and between these and private entities.

Operationally, the *ModI* is regulated by guidelines adopted by the *Agenzia per l’Italia Digitale*, in agreement with the *Dipartimento per la trasformazione digitale*, and constantly updated, also by incorporating requests from interested parties.

The *ModI* is based on the following principles:

- **Interactions:** Interactions assume that the involved entities, public and private, can perform the function of *Producer* of *e-services*, when they make digital services available to other entities, and the function of *Consumer* of *e-services*, when they use the *e-services* made available by another entity.
- **Application programming interface:** The *e-services* made available by *Producers* are implemented by application programming interfaces (APIs) using either of these technologies and standards for remote invocation:
    - SOAP over HTTP and the so-called WS-* stack;
    - REST APIs, classifiable at Level 1 of the Richardson Maturity Model, hereinafter HTTP APIs.
- **Interoperability patterns and profiles:** These are progressively identified with the involvement of interested parties. These define solutions to secure data exchange needs, which *Producers* use to implement their *e-services*.
- **Division of responsibilities:** *Producers* are responsible for the *e-services* they provide, while *Consumers* are responsible for managing the data they receive.
- **Cooperation technologies:** *E-services* are provided and consumed through technologies and standards for remote invocation, standardized (*de iure* and *de facto*) at the international level (W3C [1[^1]], Internet Engineering Task Force [2[^2]], and Linux Foundation [3[^3]]). Specifically:
    - *Regarding SOAP over HTTP e-service implementations:*
        - Simple Object Access Protocol (SOAP), as the application protocol for remote service invocation.
        - Web Service Description Language (WSDL), as the language for interface description.
    - *Regarding HTTP API e-service implementations:*
        - RFC3230, RFC3744, RFC5246, RFC5789, RFC7231, RFC7233, RFC7389, RFC7396, RFC7515, RFC7519, RFC8725, RFC9110, for the implementation of application interfaces (API);
        - OpenAPI Specification, as the language for interface description.
    - *Regarding services offered by the PDND:*
        - RFC6749, RFC6750, RFC7235, RFC7515, RFC7523, RFC9449, for the issuance of authorization tokens;
        - RFC7517, RFC7696, for public key management;
        - RFC3230, RFC3744, RFC5246, RFC5789, RFC7231, RFC7233, RFC7389, RFC7396, RFC7515, RFC7519, RFC8725, RFC9110, for the implementation of application interfaces (API);
        - OpenAPI Specification, as the language for interface description.

[^1]: [https://www.w3.org/](https://www.w3.org/)

[^2]: [https://www.ietf.org/](https://www.ietf.org/)

[^3]: [https://www.linuxfoundation.org/](https://www.linuxfoundation.org/)

The *ModI* preserves the adoption of the Service-Oriented Computing paradigm and the organization as a Service-Oriented Architecture of the *SPCoop*. It includes the *PDND* in its reference architecture as an infrastructural component that provides services to *Producers* and *Consumers* (generally referred to as *Organizations*) to enable their interaction. In particular:

- It authenticates *Organizations* based on their identification at the time of onboarding to the *PDND* and throughout their membership. This is achieved by integration with authoritative sources, such as, by way of example, the *Indice dei domicili digitali delle pubbliche amministrazioni e dei gestori di pubblici servizi* (*IPA* – index of digital domiciles of public administrations and private providers of public services) and the *Indice nazionale delle imprese e dei professionisti* (*INI-PEC* – national index of enterprises and professionals).
- It assigns peculiar characteristics to *Organizations* and maintains them through the mechanism of certified attributes, based on feedback from authoritative sources regarding supervisory or control authorities integrated with the *PDND*.
- It provides an *API Catalogue* that lets *Consumers* verify the availability of *e-services* published by *Producers*, regardless of whether they can be accessed.
- It provides tools to *Producers* to manage the lifecycle (creation, publication, update, suspension, restoration, deprecation, archiving, and versioning) of their *e-services* published on the *API Catalogue*, including reporting regarding their usage by *Consumers*.
- It allows *Producers*, when publishing their *e-services*, to specify whether *Consumers* must use bearer tokens or tokens that demonstrate proof of possession of cryptographic material  (*DPoP*-bound tokens).
- It allows *Producers* to publish *e-services* that permit *Consumers* either to access data held by the *Producer* or to forward data in their possession to the *Producer*.
- It manages agreement requests that allow potential *Consumers* (who possess the certified attributes required by *Producers* at the time of publishing their *e-services*) to signal the intention to use a specific *e-service*. It leaves it to the *Producer* to either be informed only of the request or explicitly approve it.
- It manages statements of purpose – a prerequisite for using *e-services* – for approved agreement requests, so that *Organizations* that receive data can record the motivation and regulatory prerequisites justifying the use of the data they obtained via *e-services* (e.g., the lawfulness of processing under the *GDPR*).
- It records API clients used by *Consumers* to access *e-services* relative to the declared purposes and the cryptographic material associated with said clients, primarily needed for preliminary authentication to the *PDND* for the issuance of authorization tokens for access to *e-services*.
- It issues authorization tokens (bearer tokens or *DPoP*-bound tokens) for *Consumers* to access *e-services*. To do so, it verifies the completion of the purpose statement by the *Organization* receiving new data and the status of the associated agreement request.
- It supports an asynchronous message exchange model for interactions between *Producers* and *Consumers* for an *e-service*, enabling the inclusion of the necessary elements in the authorization tokens.
- It makes *e-service* templates available as a co-design tool to facilitate coordination across application domains where several *Organizations* provide analogous *e-services*. It also makes pre-compiled models of purpose statements available to simplify the statement incumbent on *Organizations*.
- It provides tools that allow *Producers* to communicate evidence of changes to data provided by their *e-services* to *Consumers* who need to manage these changes, in a manner consistent with the regulatory framework.

In short, the *PDND* serves as an *Authentication and Authorization Server*. It applies the Attribute-Based Access Control model regarding the agreement requests initiated by *Consumers* and integrated with purpose statements by *Organizations* to enable access to *e-services*. It ensures the issuance of authorization tokens to permit interactions between the IT systems of *Producers* and *Consumers*. Furthermore, the *PDND* provides *Organizations* with the services necessary for their full participation in the *ModI*, in compliance with current legislation, with particular attention to the protection of personal data, within an administrative and technological security framework for *Organizations*.

The following diagram illustrates the high-level architecture of the *ModI*.

![](../resources/diagram-modi.svg)

Within the *ModI*, the *PDND*, in addition to performing the function of an *Authentication and Authorization Server*, supports and standardizes *Organizations’* processes, particularly for enabling the use of *e-services*.