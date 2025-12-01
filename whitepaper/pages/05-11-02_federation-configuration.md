In this proposal we assume that, for each *Knode*, other *Knodes* are trusted subjects for which a secure communication channel exists. We suppose that this channel would be implemented via mutual TLS.

The interactions between *Knodes* describes in this proposal assume implicitly that this secure channel exists. Therefore, they do not include explicitly the transmission of any additional cryptographic material between them.

In the foreseen use cases, a limited number of *Knodes* will exists, and they will not change frequently. For example, there could be one *Knode* per Member State of the European Union and one for the institutions of the European Union. Therefore, even a relatively burdensome process to establish secure communication between two *Knodes* seems to be acceptable (for instance, one that involves certificate exchange). Protocols to discover new *Knodes* automatically do not seem to be necessary.

The *Knodia Consortium*, capitalizing on the effects of the proposed experimentation, defines the process for new *Knodes* to join *Knodia* and the means to exchange the necessary elements to establish trust between the *Knodes*.
