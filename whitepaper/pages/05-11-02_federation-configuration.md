# Configuration of the federation of Interop Nodes

In this proposal we assume that, for each *Interop Node*, other *Interop Nodes* are trusted subjects for which a secure communication channel exists. We suppose that this channel would be implemented via mutual TLS.

The interactions between *Interop Nodes* describes in this proposal assume implicitly that this secure channel exists. Therefore, they do not include explicitly the transmission of any additional cryptographic material between them.

In the foreseen use cases, a limited number of *Interop Nodes* will exists, and they will not change frequently. For example, there could be one Node per Member State of the European Union and one for the European Union institutions. Therefore, even a relatively burdensome process seems to be acceptable to establish secure communication between two Nodes (for instance, involving certificate exchange). Protocols to discover new nodes automatically do not seem to be necessary.

The Federation Consortium, capitalizing on the effects of the proposed experimentation, defines the process for new *Interop Nodes* to join the *Cross-Border Federation* and the means to exchange the necessary elements to establish trust between the *Interop Nodes*.

[^1]: The Italian implementation of the Signal Hub for the PDND has followed the report “Pseudonymisation techniques and best practices” of the ENISA, available at the URL [https://www.enisa.europa.eu/publications/pseudonymisation-techniques-and-best-practices](https://www.enisa.europa.eu/publications/pseudonymisation-techniques-and-best-practices).
