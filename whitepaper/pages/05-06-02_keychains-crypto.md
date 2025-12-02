The *Consumer Keychain* is the digital container in which the *Consumer* deposits the public cryptographic material corresponding to the *Electronic Seals* it uses to seal *access token* requests for consuming *Cross-Border E-Services*.

Each *Consumer* creates and manages its *Consumer Keychains* via the user interface on its *Consumer Knode*. The *Consumer Knode* must make *Consumer Keychains* available through the *Federated API* so a *Producer Knode* can retrieve the cryptographic material needed for verification. See § [Issuance of access tokens for Cross-Border E-Services](./05-07-00_tokens.md) for more details.

This architectural choice lets each *Knode* be fully autonomous in managing the public cryptographic material of its onboarded *Confederate Organizations*. Therefore, this material does not need to be distributed across different nodes, which would be more complex and could increase the risk of misalignment.

The user interface of each *Consumer Knode* must enable *Consumer* *Operators* to:

- create a *Consumer Keychain*;
- deposit in the *Consumer Keychain* the aforementioned public cryptographic material (one or more public keys).

*Knodes* must support depositing X.509 certificates or public keys as public cryptographic material in *Consumer Keychains*.

The *Consumer Knode* must manage the lifecycle of the cryptographic material if the *Operator* that deposited it loses authorization rights within the *Confederate Organization* (for example, removing all keys deposited by an *Operator* who no longer has access to the *Confederate Organization*).

***Consumer Knodes* must ensure the following requirements are met:**

- **They must allow their *Confederate Organizations* to manage *Keychains*.**
- **They must make the public cryptographic material deposited by *Consumers* available to *Producer Knodes* through the *Federated API*.**

***Producer Knodes* must ensure the following requirement is met:**

- **They must retrieve the *Consumers*’ public cryptographic material from *Consumer Knodes* to verify the *Consumers*’ *client assertions*.**
