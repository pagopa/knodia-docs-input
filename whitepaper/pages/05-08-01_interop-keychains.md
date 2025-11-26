# Interop Keychains for the Interop Node API

Interop Keychains are used by *Confederate Organizations* to request *access tokens* for the machine-to-machine API of an *Interop Node*, hereinafter referred to as the target *Interop Node*. They are like the *Consumer Keychains* described in § [Consumer Keychains](./05-06-00_keychains.md), except for these differences:

- They are not be associated with *Purpose Statement*.
- By default, they can only be used to perform read operations.
- To be enabled for write, edit, or delete operations, they require an *Operator* of the *Confederate Organization* to assume responsibility for the operations performed with it. This assumption of responsibility must be made towards all target *Interop Nodes* with which the *Confederate Organization* intends to interact.

An *Operator* who declares to be responsible for an Interop Keychain assumes administrative responsibility for all operations performed with it. To make this declaration, the *Operator* must:

1. access the Interop Keychain details in the user interface of its *Interop Node*;
2. select the target *Interop Node* it intends to issue the declaration of responsibility towards;
3. be redirected to the user interface of the target *Interop Node*;
4. authenticate via eIDAS login and confirm the operation.

The assumption of responsibility towards the target *Interop Node* therefore works similarly to the confirmation process described in § [Agreement Request – Confirmation by the Consumer Operator](./05-05-01_agreement.md#confirmation-by-the-consumer-operator).

The target *Interop Node* that receives the declaration must store the references:

- of the Interop Keychain;
- of the responsible *Operator*.

After the declaration, the Keychain is enabled for write, edit, and delete operations towards the Target *Interop Node*.

Gli *Interop Nodes* devono rispettare i seguenti requisiti:

 rendere disponibili ai propri Aderenti la gestione dei Keychain Interop;  
 permettere agli *Operator*i dei propri Aderenti di effettuare la dichiarazione di responsabilità per il Keychain interop verso gli altri *Interop Nodes*;  
 permettere di effettuare la conferma della dichiarazione di responsabilità per il Keychain interop da parte degli *Operator*i di altri *Interop Nodes*.
