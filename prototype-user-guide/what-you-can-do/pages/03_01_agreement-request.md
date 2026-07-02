The **Agreement Request** is initiated by the **Consumer** on the **Knode** where it is onboarded.

The **Consumer** can initiate the **Agreement Request** only if they meet the **Attributes** specified in the **Consumption Requirements** defined by the **Producer**.

The **Knodia Prototype** provides different behaviors for the two **Knodes**; specifically:
- On the **Orion Knode**, the **Agreement Request** is automatically activated.
- On the **Lynx Knode**, the **Agreement Request** requires explicit confirmation from the **Producer** within the **Lynx Knode** (user authentication into the **Lynx Knode** is simulated).

The data relating to this action is stored on the Producer's **Knode**, which represents the authoritative source, and is synchronized through **Knode-to-Knode** communication.

At any time, the **Producer** can consult the **Agreement Request** and, if necessary, suspend it.
