The following diagram illustrates the lifecycle of an *Agreement Request*, starting when the *Consumer* requests its creation through its *Consumer Knode*. The diagram uses choice nodes to indicate that confirmation via *eIDAS login* is optional.

The states are:

- **Pending Operator confirmation:** The *Agreement Request* is created by the *Producer Knode* in this state if the *Producer* requested confirmation from a *Consumer* *Operator* via *eIDAS login* on the *Producer Knode* for that *Cross-Border E-Service*.
- **Submitted:** The *Agreement Request* has been created but is not active yet. Depending on the policy of the *Producer Knode*, it could be activated or rejected automatically, or it could require manual approval. The *Consumer* could also be asked (automatically or after a manual action by the *Producer*) to complete further steps. The *Agreement Request* leaves this state if it is activated (by the *Producer* or automatically by the *Producer Knode*) or archived (because it is rejected by the *Producer*, automatically rejected by the *Producer Knode*, or deleted by the *Consumer*).
- **Active:** The *Agreement Request* has been approved and is active. The *Consumer* can request *access tokens* to be issued for the corresponding *E-Service*.
- **Suspended:** The *Agreement Request* has been temporarily suspended, e.g., due to technical or administrative problems. The *Consumer* cannot request *access tokens* for the corresponding *E-Service*. The *Agreement Request* can be suspended by the *Producer*, by the *Consumer*, or automatically by the *Producer Knode* (for example, if the *Consumer* no longer has one of the *Knodia Attributes* in the *consumption requirements*). Multiple actors can suspend the *Agreement Request* contemporaneously. The *Agreement Request* is then reactivated only if all actors who had suspended it reactivate it.
- **Archived:** The *Agreement Request* has been archived and is no longer valid. The *Consumer* can manually archive an *Agreement Request*. An *Agreement Request* is also archived if it is rejected or if intervening conditions prejudice its existence.

![](../resources/lifecycle-agreement.png)
