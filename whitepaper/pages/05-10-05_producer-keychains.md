An Intero Node may allow *Producers* to create one or more *Producer* Keychains to associate to their *E-Services*. These objects are equivalent to the *Consumer* Keychains described in § [Consumer Keychains](./05-06-00_keychains.md).

Using the public cryptographic material deposited in the *Producer* Keychain, *Producers* can electronically seal the responses their *E-Services* send. This assures *Consumers* within *Knodia* non-repudiation for these responses.

If the *Producer* uses this functionality, its *Knode* must make the contents of the *Producer* Keychain available via the *Knode* API. This allows *Consumers* to retrieve the public cryptographic material and verify the seal of the *E-Service*’s responses.
