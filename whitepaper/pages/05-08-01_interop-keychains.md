Interop Keychains are used by *Confederate Organizations* to request *access tokens* for the machine-to-machine API of an *Knode*, hereinafter referred to as the target *Knode*. They are like the *Consumer Keychains* described in § [Consumer Keychains](./05-06-00_keychains.md), except for these differences:

- They are not be associated with *Purpose Statement*.
- By default, they can only be used to perform read operations.
- To be enabled for write, edit, or delete operations, they require an *Operator* of the *Confederate Organization* to assume responsibility for the operations performed with it. This assumption of responsibility must be made towards all target *Knodes* with which the *Confederate Organization* intends to interact.

An *Operator* who declares to be responsible for an Interop Keychain assumes administrative responsibility for all operations performed with it. To make this declaration, the *Operator* must:

1. access the Interop Keychain details in the user interface of its *Knode*;
2. select the target *Knode* it intends to issue the declaration of responsibility towards;
3. be redirected to the user interface of the target *Knode*;
4. authenticate via *eIDAS login* and confirm the operation.

The assumption of responsibility towards the target *Knode* therefore works similarly to the confirmation process described in § [Agreement Request – Confirmation by the Consumer Operator](./05-05-01_agreement.md#confirmation-by-the-consumer-operator).

The target *Knode* that receives the declaration must store the references:

- of the Interop Keychain;
- of the responsible *Operator*.

After the declaration, the Keychain is enabled for write, edit, and delete operations towards the Target *Knode*.

***Knodes* must ensure the following requirements are met:**

- **They must make *Interop Keychain* management available to their *Confederate Organizations*.**
- **They must allow *Operators* of their *Confederate Organizations* to issue responsibility declarations for an *Interop Keychain* towards other *Knodes*.**
- **They must allow *Operators* of *Confederate Organizations* of other *Knodes* to confirm the responsibility declaration for their *Interop Keychain*.**
