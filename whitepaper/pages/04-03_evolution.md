This section reports the rationale that led Italy to transition from the *SPCoop* to the *ModI*.

The *SPCoop* launched the Italian experience in data sharing and service integration between Italian public administrations via digital tools. However, experience with it highlighted that:

- The *Porta di Dominio* component of the technological architecture (which applied the custom SOAP extension named *busta e-gov*) required public administrations to pay the toll of a limited market to equip themselves with this component, risking technological lock-in.
- The *Porta di Dominio* component was imposed on public administrations, reducing their freedom to make individual choices internal to each organization. This circumstance was most relevant in complex public administrations applying aggressive segmentation policies regarding their server farms or for public administrations that started to adopt cloud computing.
- Delegating to individual cooperating entities the responsibility for authorization for access to their provided data and/or services (through the definition of agreements between parties) delayed participation of public administrations due to the frequent duplication of administrative proceedings.
- Defining a unique security framework – regardless of the nature of the data subject to interaction – overburdened public administrations participating in interactions even in cases where the data to be exchanged could have allowed a less onerous approach for them.

The consolidation of the European regulatory framework regarding interoperability, the opening of public data, and the protection of personal data of natural persons, primarily through

- **Communication from the Commission to the European Parliament, the Council, the European Economic and Social Committee and the Committee of the Regions (COM/2017/0134 final) regarding the European Interoperability Framework – Implementation Strategy** [1[^1]];
- **Directive (EU) 2019/1024 of the European Parliament and of the Council of 20 June 2019 on open data and the re-use of public sector information** [2[^2]];
- **Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC** [3[^3]];

reinforced lastly by the **Regulation (EU) 2024/903 of the European Parliament and of the Council of 13 March 2024 laying down measures for a high level of public sector interoperability across the Union** [4[^4]], urged Italy to re-evaluate the *SPCoop*.

[^1]: [https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=COM%3A2017%3A134%3AFIN](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=COM%3A2017%3A134%3AFIN)

[^2]: [https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32019L1024](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32019L1024)

[^3]: [https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32016R0679](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32016R0679)

[^4]: [https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32024R0903](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32024R0903)

The technological evolution that occurred since the launch of the *SPCoop* highlighted the opportunity to re-evaluate the technologies used to ensure data sharing and service integration between Italian administrations. The increased use of HTTP APIs, even in complex contexts – and the availability of tools for their implementation and management – is particularly relevant. It is also worth noting that the evidence of increased use of HTTP APIs is supported by the interest shown by international organizations and initiatives, such as:

- W3C [5[^5]];
- Internet Engineering Task Force [6[^6]];
- Linux Foundation [7[^7]].

[^5]: [https://www.w3.org/](https://www.w3.org/)

[^6]: [https://www.ietf.org/](https://www.ietf.org/)

[^7]: [https://www.linuxfoundation.org/](https://www.linuxfoundation.org/)

Over the years, these have increased *de iure* and *de facto* standardization actions. This led to an increase in the market offer of technological solutions and an increased availability of the professionals necessary for their maintenance. This circumstance can create the prerequisites for a reduction in costs for the management of technological infrastructures of public administrations.

Considering the above, Italy defined the *ModI* based, primarily, on the following choices:

- Increasing the degree of freedom of entities interested in interactions. Specifically, this regards organizational and technological choices: relaxing the constraint of the *Porte di Dominio* and, in order to guarantee interoperability, selecting international standards to use in relation to specific interaction needs (interoperability patterns and profiles).
- Expanding the services offered by the infrastructural component, specifically the *PDND*, and in particular delegating to it:
    - certain identification of interested parties (onboarding) and management of their authorization titles (attribute management);
    - providing entities that must/want to interact with a normalized process (agreement requests and purpose statements) compliant with provisions regarding the protection of personal data of natural persons;
    - distributing public cryptographic material used by entities involved in transactions;
    - issue authorization for API access (issuance of access tokens) based on the status of interested parties and the evidence recorded from their agreement requests and purpose statements;
    - providing tools to facilitate interested parties, specifically to:
        - support API design (*e-service* templates);
        - simplify application of the *GDPR* (pre-compiled purpose statement templates);
        - create APIs for data reception (*reverse production* / *Receive Data* mode);
        - manage interactions with high processing burden for response preparation (asynchronous communication);
        - distribute data changes to interested parties entitled to them (Signal Hub).

The following table provides a synoptic comparison between the *SPCoop* and the *ModI*.

| **Criterion** | ***SPCoop* (application cooperation)** | ***ModI* (interoperability) based on the *PDND*** |
| - | - | - |
| **Period of adoption** | <ul><li>2008–2021</li></ul> | <ul><li>2022–present</li></ul> |
| **Interested subjects** | <ul><li>public administrations</li></ul> | <ul><li>public administrations</li><li>providers of public services</li><li>enterprises</li></ul> |
| **Technologies and standards** | <ul><li>SOAP</li><li>WSDL</li><li>UDDI</li><li>*busta e-gov*</li></ul> | <ul><li>HTTP APIs<ul><li>RFC3230, RFC3744, RFC5246, RFC5789, RFC7231, RFC7233, RFC7389, RFC7396, RFC7515, RFC7519, RFC8725, RFC9110</li></li><li>OpenAPI Specification</li></ul><li>SOAP<ul><li>SOAP</li><li>WSDL</li></ul></li></ul> |
| **Onboarding** | <ul><li>Qualification of the *Porta di Dominio*</li></ul> | <ul><li>Onboarding of the organization to the *PDND*</li></ul> |
| **Enabling interactions** | <ul><li>Autonomous stipulation of Service Agreements between interested parties</li></ul> | <ul><li>Centralized normalized process managed by the *PDND*:<ul><li>agreement request</li><li>purpose statement</li><li>API client registration</li></ul></li></ul> |
| **Key components** | <ul><li>*Porta di Dominio* (for service delivery)</li><li>*SICA* (interoperability, cooperation and access services)</li></ul> | <ul><li>*PDND* (technological infrastructure and centralized authentication and authorization server; centralized API Catalogue).</li></ul> |
| **Infrastructure components and services** | <ul><li>*SICA*<ul><li>Registry Services</li><li>Subject Index Services</li><li>Security Services</li></ul></li></ul> | <ul><li>*PDND*<ul><li>Onboarding of organizations and attribute assignment</li><li>API Catalogue of provided e-services</li><li>E-service lifecycle management</li><li>Agreement request for an e-service</li><li>Purpose statements</li><li>API client management</li><li>Authorization token issuance</li><li>Reverse production</li><li>Asynchronous communications</li><li>E-service templates</li><li>Pre-compiled purpose statement templates</li><li>Signal Hub</li></ul></li></ul> |
| **Adoption numbers** | <ul><li>Total qualified *Porte di Dominio*: 288 of which 91 active as of 25-06-2023<br>source: “Porte di dominio” dataset of the *Indice dei domicili digitali delle pubbliche amministrazioni e dei gestori di pubblici servizi* (*IPA*) ([https://indicepa.gov.it/ipa-dati/dataset/porte-di-dominio](https://indicepa.gov.it/ipa-dati/dataset/porte-di-dominio))</li></ul> | <ul><li>8,787 onboarded entities (public and private)</li><li>13,122 published e-services</li><li>21,336 connections between entities</li><li>834,745,611 exchange sessions</li></ul><br>N.B. the indicated data reflects status as of 23-10-2025<br>source: “I numeri della PDND” ([https://www.interop.pagopa.it/numeri](https://www.interop.pagopa.it/numeri), in open format at URL [https://www.dati.gov.it/view-dataset?tags=pdnd&organization=pcm-dipartimento-trasformazione-digitale&page=0](https://www.dati.gov.it/view-dataset?tags=pdnd&organization=pcm-dipartimento-trasformazione-digitale&page=0)) |

The main value of the Italian decision to transition from the *SPCoop* to the *ModI*, to date, is supported by the significant increase in adoption: 8,621 public entities have onboarded to the *PDND* compared to 288 equipped with qualified *Porte di Dominio* in the *SPCoop*.

Furthermore:

- The number of connections between public and private entities – 21,336 – is evidently a result of the simplification allowed by the services offered by *PDND* to *Organizations* to ease these actions (particularly agreement requests and purpose statements).
- The number of interactions occurring between *Producers* and *Consumers* exceeds 834,745,611 exchange sessions, where multiple interactions can be executed within a single session.

For a correct interpretation of the reported numerical evidence, as an effect of the use of the *PDND* in the *ModI*, it is worth noting that onboarding to the *PDND* itself started in October 2022 for public entities and in June 2025 for private entities.

The objective evidence of the positive effects of adopting the *ModI* through the *PDND* in the Italian context forms the basis of this proposal.
