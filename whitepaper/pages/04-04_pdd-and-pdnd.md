What follows is a comparative analysis of the *ModI* and the *SPCoop*. This focuses on the technological components necessary for subjects interested in applying either model, respectively the *PDND* and the *Porte di Dominio* (though these play different roles in the two architectures, as described previously).

The following criteria are examined considering the burdens and possibilities for subjects interested in participating in interactions in the two models. Burdens and possibilities are evaluated as either:

- ✅ – positive for subjects interested in participating in interactions;
- ⚠️ – burdensome for subjects interested in participating in interactions;
- ❌ – functionality not available for subjects interested in participating in interactions.

The comparative analysis highlights the advantages obtained in transitioning from *Porte di Dominio* to the *PDND*. In brief, these are:

- the definition of a normalized process, shared among all interested subjects, to enable access to e-services and allow interaction between them;
- the adoption of technologies that are in wider use and have lower complexity, which can potentially reduce costs;
- the centralized sharing, via the *PDND*’s API Catalogue, of the offer of digital services, to facilitate meeting demand with supply;
- the security framework based on the *PDND* which ensures: the authentication and authorization of access to *e-services*; the protection, integrity, and confidentiality of the data exchanged; and the complete traceability of requests and their outcome.

# Technological aspects

| **Criterion** | ***Porte di Dominio*** | ***PDND*** |
| - | - | - |
| **Interaction technologies** | ⚠️ *busta e-gov* | ✅ HTTP APIs<br>⚠️ SOAP over HTTP |
| **Authentication standards** | ⚠️ WS-Security<br>✅ X.509 certificate | ✅ OAuth2<br>✅ JWT<br>✅ JWK |
| **Development model** | ⚠️ on-premise | ✅ open source |
| **Technical complexity** | ⚠️ medium-high | ✅ low-medium |

# Operative aspects

| **Criterion** | ***Porte di Dominio*** | ***PDND*** |
| - | - | - |
| **Initial setup** | ⚠️ installation and qualification for each *Porta di Dominio* instance of the interested party | ✅ one-off for interested parties |
| **Agreement management** | ❌ direct relation between interested parties | ✅ unique, *GDPR*-compliant process based on agreement requests and purpose statements" |
| **Maintenance** | ⚠️ each *Porta di Dominio* instance of the interested party | ✅ single point of interest |
| **Infrastructure costs** | ⚠️ cost center for each *Porta di Dominio* instance of the interested party | ✅ single cost center |
| **Monitoring** | ⚠️ distributed for each *Porta di Dominio* instance of the subject | ✅ centralized |

# Functionality

| **Criterion** | ***Porte di Dominio*** | ***PDND*** |
| - | - | - |
| **E-service versioning** | ⚠️ distributed for each *Porta di Dominio* instance of the subject | ✅ centralized tools |
| **E-service discovery** | ❌ direct relation between interested parties | ✅ centralized via API Catalogue |
| **Subject categorization** | ❌ realized by interested parties towards each other | ✅ centralized via attribute management |
| **E-service co-design** | ❌ direct relation between interested parties | ✅ API templates |
| **Data variation distribution** | ⚠️ implemented by interested parties for individual e-services | ✅ standardized and centralized via the *Signal Hub* |

# Governance and compliance

| **Criterion** | ***Porte di Dominio*** | ***PDND*** |
| - | - | - |
| **Regulatory compliance** | ⚠️ conforms to outdated regulatory framework | ✅ conforms to current Italian regulatory framework |
| **Once-only principle application** | ❌ direct relation between interested parties | ✅ favored in a native manner |
| **GDPR application** | ❌ realized by interested parties | ✅ uniform purpose statement managed centrally<br>✅ pre-compiled purpose statement templates |
| **Interaction traceability** | ⚠️ distributed for each *Porta di Dominio* instance of the subject | ✅ complete and centralized |
| **Exchange audit** | ⚠️ distributed for each *Porta di Dominio* instance of the subject | ✅ simplified by centralization of evidence |
| **Future roadmap** | ❌ phasing out | ✅ investments in progress |

# Ecosystem and support

| **Criterion** | ***Porte di Dominio*** | ***PDND*** |
| - | - | - |
| **Community** | ❌ realized by interested parties | ✅ growing, current support from the Italian Regulator |
| **Documentation** | ⚠️ not maintained | ✅ modern and updated |
| **Availability of dev tools** | ❌ not available for *busta e-gov*| ✅ high for HTTP APIs<br>⚠️ limited for SOAP over HTTP |
| **Availability of tech skills** | ⚠️ very limited for *busta e-gov* | ✅ high for HTTP APIs<br>⚠️ limited for SOAP over HTTP |
