A **Producer** can enable the **Distribution of data change signals** (hereinafter **Signal Hub**) feature when defining its **Cross-Border E-Services**.

By enabling the **Signal Hub** feature, the **Producer** undertakes to use the services made available by its **Knode** to:
- Report changes to **Cross-Border E-Services** data.
- Rotate the secret used for the pseudonymization of references to changed data.

For more details on the **Signal Hub** additional feature, see [Distribution of data change signals (Signal Hub)](../../../whitepaper/pages/05-10-02_signal-hub.md).

Below are the references to the services implemented on the **Knodes** to apply the **Signal Hub** feature.

| Knode | Service Name | Description | URL |
|---|---|---|---|
| Lynx | SIGNAL DEPOSIT | Used by the **Producer** to deposit change signals or the new secret for reference pseudonymization | `https://signalhub.lynx.test.knodia.com/signals` |
| Lynx | SIGNAL RETRIEVE | Used by the **Consumer** to retrieve change signals or the new secret for reference pseudonymization | `https://signalhub.lynx.test.knodia.com/signals/{eserviceId}` |
| Orion | SIGNAL DEPOSIT | Used by the **Producer** to deposit change signals or the new secret for reference pseudonymization | `https://signalhub.orion.test.knodia.com/signals` |
| Orion | SIGNAL RETRIEVE | Used by the **Consumer** to retrieve change signals or the new secret for reference pseudonymization | `https://signalhub.orion.test.knodia.com/signals/{eserviceId}` |

The API documentation for the **Signal Hub** Service is available at:
- For Lynx: [https://signalhub.lynx.dev.knodia.com/docs](https://signalhub.lynx.dev.knodia.com/docs)
- For Orion: [https://signalhub.orion.dev.knodia.com/docs](https://signalhub.orion.dev.knodia.com/docs)
