In this proposal we assume that, for each *Knode*, other *Knodes* are trusted subjects for which a secure communication channel exists. We suppose that this channel would be implemented via mutual TLS.

The interactions between *Knodes* describes in this proposal assume implicitly that this secure channel exists. Therefore, they do not include explicitly the transmission of any additional cryptographic material between them.

In the foreseen use cases, a limited number of *Knodes* will exists, and they will not change frequently. For example, there could be one Node per Member State of the European Union and one for the European Union institutions. Therefore, even a relatively burdensome process seems to be acceptable to establish secure communication between two Nodes (for instance, involving certificate exchange). Protocols to discover new nodes automatically do not seem to be necessary.

The *Federation Consortium*, capitalizing on the effects of the proposed experimentation, defines the process for new *Knodes* to join *Knodia* and the means to exchange the necessary elements to establish trust between the *Knodes*.
