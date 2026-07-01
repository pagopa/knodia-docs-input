A **Producer** can enable **Distribution of data change signals** (hereinafter **Signal Hub**) feature when defining its **Cross-Border E-Services**.

By enabling the **Signal Hub** feature, the **Producer** undertakes to use the services made available by their **Knode** to:
- report changes to **Cross-Border E-Services** data;
- rotate the secret used to pseudonymization references to changed data.

For more details on the Signal Hub feature, see [Distribution of data change signals (Signal Hub)](../../../whitepaper/pages/05-10-02_signal-hub.md).

Below are the references to the services implemented on the **Knodes** to apply the **Signal Hub** feature.

| Knode | Service Name| Description | url |
|---|---|---|---|
| Lynx | SIGNAL DEPOSIT | used by the **Producer** to deposit a signals of the variations or the new secret for pseudonymization references | https://signalhub.lynx.test.knodia.com/signals |
| Lynx | SIGNAL RETRIEVE | used by the **Consumer** to retrieve the signals of the variations or the new secret for pseudonymization of references | https://signalhub.lynx.test.knodia.com/signals/{eserviceId} |
| Orion | SIGNAL DEPOSIT | used by the **Producer** to deposit a signals of the variations or the new secret for pseudonymization references | https://signalhub.orion.test.knodia.com/signals |
| Orion | SIGNAL RETRIEVE | used by the **Consumer** to retrieve the signals of the variations or the new secret for pseudonymization of references | https://signalhub.orion.test.knodia.com/signals/{eserviceId} |

The API docs for Signal Hub Service are:
- for Lynx at https://signalhub.lynx.dev.knodia.com/docs
- for Orion at https://signalhub.orion.dev.knodia.com/docs



