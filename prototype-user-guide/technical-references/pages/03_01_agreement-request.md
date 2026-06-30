The **Agreement Request** is initiated by the **Consumer**, on the **Knode** where it onboarded.

The **Consumer** can initiate the **Agreement Request** only if they meet the **Attributes** indicated into the **Consumption Requirements** definiti dal **Producer**.

The **Knodia Prototype** provides different behaviors for the two **Knodes**, specifically:
- **Orion Knodes**, the **Agreement Request** is automatically activated;
- **Lynx Knodes**, the **Agreement Request** requires explicit confirmation from the **Consumer** into **Lynx Knode** (user authentication into the **Lynx Knode** is simulated).

The data relating to this action is stored on the Producer's **Knode**, which represents the authoritative source, ensured through **Knode-to-Knode** communication.

At any time the **Producer** can consult the **Agreement Request** and possibly suspend it.