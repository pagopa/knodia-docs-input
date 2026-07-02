The definition of a **Cross-Border E-Service** is implemented by the **Producer**, on the **Knode** where it onboarded.

The **Producer** must define the technical characteristics:
- **Data mode**: for **Knodia prototype** only **Provide-data** (from the **Producer** to the **Consumer**), indicates the data flow between Producer and Consumer;;
- **Duration**: the maximum validity time of the access token issued by the **Knode**, expressed in minutes and no more than 1440 minutes (24 hours);
- **Audience**: the unique identifier of the **Cross-Border E-Service** for the **Producer**;
- **Type**: the type of access token issued by the **Knode**, between [Bearer](https://datatracker.ietf.org/doc/html/rfc7521 and https://datatracker.ietf.org/doc/html/rfc6750) and [DPoP](https://datatracker.ietf.org/doc/html/rfc9449);

When a producer creates a **Cross-Border E-Service**, two **tolerance thresholds** are set for its infrastructure:
- the maximum number of API calls per day allowed for single **Consumer**;
- the maximum number of API calls per day allowed for all **Consumers** of a single **Knode**.

The **Producer** can enable the additional feature Distribution of data change signals (Signal Hub).

The **Producer** declares the behavior of the API implemented for the **Cross-Border E-Service** by loading the related [OpenAPI spec](https://swagger.io/specification/).

**Cross-Border E-Service** technical details cannot be modified after publication.
