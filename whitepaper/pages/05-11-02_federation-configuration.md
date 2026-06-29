In this proposal, we assume that, for each *Knode*, the other *Knodes* are trusted subjects with a secure communication channel. We assume this channel will be implemented using mutual TLS.

The interactions between *Knodes* described in this proposal implicitly assume that a secure channel exists. Therefore, they do not include explicitly the transmission of any additional cryptographic material between them.

In the foreseen use cases, a limited number of *Knodes* will exist, and they will not change frequently. For example, there could be one *Knode* per Member State of the European Union and one for the European Union institutions. Therefore, even a relatively burdensome process for establishing secure communication between two *Knodes* seems acceptable (for instance, one that involves certificate exchange), and we do not envision a need for protocols for automatic discovery of new *Knodes*.

The *Knodia Consortium*, capitalizing on the effects of the proposed experimentation, defines the process for new *Knodes* to join *Knodia* and the means to exchange the necessary elements to establish trust between the *Knodes*.
