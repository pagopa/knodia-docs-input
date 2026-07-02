The definition of a **Cross-Border E-Service** is implemented by the **Producer** on the **Knode** where it is onboarded.

The **Producer** must define the following technical characteristics:
- **Data mode**: For the **Knodia prototype**, only **Provide-data** (from the **Producer** to the **Consumer**) is supported, indicating the direction of the data flow.
- **Duration**: The maximum validity time of the access token issued by the **Knode**, expressed in minutes and up to 1440 minutes (24 hours).
- **Audience**: The unique identifier of the **Cross-Border E-Service** for the **Producer**.
- **Type**: The type of access token issued by the **Knode**, chosen between [Bearer](https://datatracker.ietf.org/doc/html/rfc7521) / [RFC 6750](https://datatracker.ietf.org/doc/html/rfc6750) and [DPoP](https://datatracker.ietf.org/doc/html/rfc9449).

When a **Producer** creates a **Cross-Border E-Service**, two **tolerance thresholds** are set for its infrastructure:
- The maximum number of daily API calls allowed for a single **Consumer**.
- The maximum number of daily API calls allowed for all **Consumers** of a single **Knode**.

The **Producer** can enable the additional "Distribution of data change signals" (**Signal Hub**) feature.

The **Producer** declares the behavior of the API implemented for the **Cross-Border E-Service** by uploading the related [OpenAPI specification](https://swagger.io/specification/).

**Cross-Border E-Service** technical details cannot be modified after publication.
