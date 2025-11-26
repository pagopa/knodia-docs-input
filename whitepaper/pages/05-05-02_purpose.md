# Purpose Statement

A *Purpose Statement* is the declaration a *Confederate Organization* makes to assert the lawfulness of processing of personal data received through a *Cross-Border E-Service*, pursuant to Article 6 of the GDPR.

A *Purpose Statement* is necessary to enable the *Consumer* to access a *Cross-Border E-Service*, even if the *Producer* has declared that the *Cross-Border E-Service* does not provide or process personal data of natural persons.

This declaration is provided:

- for a *Provide Data* E-Service, by the *Consumers*, for each E-Service they have an active *Agreement Request*;
- for a *Receive Data* E-Service, by the *Producer* when publishing the *Cross-Border E-Service*.

Within the *Cross-Border Federation*, *Purpose Statements* are characterized by:

- an identifier which is unique within the Interoperability Domain;
- name and description;
- indication of the lawfulness of processing, as a value chosen from the options admitted by Article 6 of Regulation (EU) 2016/679;
- any additional information required by the national regulatory framework regarding the protection of personal data of natural persons to which the *Producer Interop Node* is subject (see § [Actions requested by the national regulatory framework](./05-05-03_national-regulatory-framework.md)).

The *Purpose Statements* must be filled in at least in the common language accepted by the *Cross-Border Federation*.

For both *Provide Data* and *Receive Data* E-Services, the *Consumer* declares the load it expects to put on the *Cross-Border E-Service* in terms of a maximum number of requests per given unit of time. This parameter is useful to the *Producer* to evaluate dimensioning of its technological infrastructure. Specifically:

- for *Provide Data* E-Services, the *Consumer* declares it in each *Purpose Statement* it creates;
- for *Receive Data* E-Services, the *Consumer* declares it by selecting the *Purpose Statement* created by the *Producer*.

Each *Interop Node* may choose to define and carry out checks regarding the load declared by the *Consumer* versus the quotas defined by the *Cross-Border E-Service* *Producer*. For example, an *Interop Node* may choose:

- not to perform any check (the load declaration is only used to inform the *Producer* who can dimension its infrastructure accordingly and possibly defer or reject requests in excess of the declared load);
- prevent creating new *Purpose Statements* if the quotas declared by the *Producer* for that E-Service is saturated by existing *Purpose Statements*.

See § [Lifecycle of Purpose Statements](./05-09-03_lifecycle-purpose.md) for more details on the lifecycle of *Purpose Statements*.

For what concerns *Consumers*, *Interop Nodes* must ensure the following requirements are met:

- *Confederate Organizations* can create or select (respectively, for *Provide Data* or *Receive Data* E-Services) the *Purpose Statements* for *Agreement Requests* and receive notifications related to them.
- The *Consumer Interop Node* must forward the request to create a *Purpose Statement* using the *Federated API* of the *Producer Interop Node*.
- The *Consumer Interop Node* must receive from the *Producer Interop Node*, using the *Federated API*, evidence on the state of *Purpose Statements* it has created.

For what concerns *Producers*, *Interop Nodes* must ensure the following requirements are met:

- The *Producer Interop Node* must allow other *Interop Node* to create *Purpose Statements* using the *Federated API*, for *Provide Data* E-Services, or to retrieve existing *Purpose Statements* created by the *Producer*, for *Receive Data* E-Services.
- The *Producer Interop Node* must forward to the *Consumer Interop Node*, using the *Federated API*, the state changes of *Purpose Statements* the *Consumer Interop Node* has created.

#### Finalità per E-Service in modalità Fornitura Dati

Un *Operator*e di un *Consumer*, relativamente ad una Richiesta di Fruizione attiva per un E-Service, può effettuare una o più Dichiarazioni di Finalità tramite l’interfaccia utente del *Consumer Interop Node*. Il *Consumer Interop Node* assicura di:

1. richiedere all’*Operator*e del *Consumer* di popolare quanto di propria competenza secondo i requisiti indicati in precedenza nel § “[Dichiarazione di Finalità](#dichiarazione-di-finalità)”;  
2. recuperare dal *Producer Interop Node*, tramite l’API Federata, il form per eventuali informazioni aggiuntive richieste dal quadro normativo nazionale del *Producer*, si rimanda al § “[Azioni richieste dal quadro normativo nazionale](#azioni-richieste-dal-quadro-normativo-nazionale)” per i relativi dettagli;  
3. rendere disponibile all’*Operator*e del *Consumer* il form per permettergli la compilazione dei dati richiesti dal *Producer Interop Node*;  
4. inoltrare i dati popolati dall’*Operator*e del *Consumer* al *Producer Interop Node* tramite l’API Federata.

Il *Producer Interop Node* crea la Dichiarazione di Finalità restituendo i riferimenti della stessa al *Consumer Interop Node*.

Il *Consumer Interop Node* deve Memorizzare i riferimenti:

 della Dichiarazione di Finalità, come restituito dal *Producer Interop Node*, per poterne in seguito recuperare i dettagli tramite API Federata;   
 dell’E-Service Transfrontaliero oggetto della dichiarazione;   
 del *Producer Interop Node*;

e Archiviare Elettronicamente le informazioni:

 del *Consumer* compresi gli Attributi transfrontalieri.

Il *Producer Interop Node* deve Archiviare Elettronicamente le informazioni:

 della Dichiarazione di Finalità;  
 dell’E-Service Transfrontaliero oggetto della dichiarazione; 

e Memorizzare i riferimenti:

 del *Consumer*;  
 del *Consumer Interop Node*.

Il comportamento di default previsto nella Federazione Transfrontaliera contempla che il *Producer Interop Node* contestualmente alla creazione della Dichiarazione di Finalità attiverà la stessa.

La Dichiarazione di Finalità può inoltre richiedere un’ulteriore azione di conferma esplicita da parte di un *Operator*e del *Consumer*, in caso il *Producer* lo abbia richiesto alla creazione dell’E-Service Transfrontaliero. In questo caso, la procedura è equivalente a quella descritta per la conferma di una Richiesta di Fruizione nel § “[Conferma del Consumer *Operator*](#conferma-del-consumer-operator)”. 

Il seguente service blueprint definisce il flusso delle attività realizzate dai soggetti, *Operator*i e Interop Node, interessati nella precedente ipotesi.

In ogni caso è responsabilità del *Consumer Interop Node* ascoltare gli eventi di cambio di stato della Dichiarazione di Finalità, tramite API Federata, e notificare gli stessi al *Consumer* interessato, si rimanda al § “[Distribuzione della conoscenza tra Nodi](#distribuzione-della-conoscenza-tra-nodi)” per maggiori dettagli. 

![](../resources/blueprint-purpose-creation-provide-data.svg)

I *Producer Interop Nodes* devono rispettare i seguenti requisiti:

 permettere ai *Producer* di richiedere la conferma esplicata dei potenziali *Consumers* prima di attivare le Dichiarazioni di Finalità;  
 nel caso in cui un *Producer* richieda la conferma esplicita dei potenziali *Consumers* restituire ai *Consumer Interop Nodes* interessati, tramite API Federata, gli elementi necessari per dare seguito alla stessa;  
 nel caso in cui siano necessarie informazioni aggiuntive in relazione alla protezione dei dati personali delle persone fisiche, rendere disponibile ai *Consumer Interop Nodes* interessati, tramite API Federata, il form per la raccolta delle necessarie informazioni e le operazioni per la ricezione dello stesso.

I *Consumer Interop Nodes* devono rispettare i seguenti requisiti:

 ascoltare, tramite l’API Federata dei *Producer Interop Nodes*, le variazioni di stato delle Richieste di Fruizione, per dare seguito alla conferma esplicita avvenuta;  
 nel caso in cui siano necessarie informazioni aggiuntive in relazione alla protezione dei dati personali delle persone fisiche per il *Producer Interop Nodes*, recuperare tramite API Federata il form per la raccolta delle necessarie informazioni e inoltrare le stesse ai *Producer Interop Nodes*.

#### Finalità per E-Service in modalità Ricezione Dati

Un E-Service Transfrontaliero in modalità Ricezione Dati permette al *Producer* di collezionare dati dai *Consumer*. La Dichiarazione delle finalità in questo caso spetta al *Producer*, il soggetto che tratta i dati. 

Il *Producer Interop Node* deve mettere a disposizione quanto necessario per permettere al *Producer* di popolare quanto di propria competenza secondo i requisiti indicati nel § “[Dichiarazione di Finalità](#dichiarazione-di-finalità)”.

Il *Consumer Interop Node*, per un E-Service Transfrontaliero in modalità Ricezione Dati per cui un Consumer ha una Richiesta di Fruizione attiva, deve recuperare tramite API Federata le Dichiarazioni di Finalità dal *Producer Interop Node* e renderle disponibili al Consumer.

I *Consumer Interop Nodes* devono rispettare i seguenti requisiti:

 recuperare la Dichiarazione di Finalità compilata dal *Producer*, tramite API Federata, e renderla disponibile al Consumer sulla propria interfaccia utente.

I *Producer Interop Nodes* devono rispettare i seguenti requisiti:

 rendere disponibile la Dichiarazione di Finalità compilata dal *Producer*, tramite API Federata, ai *Consumer Interop Nodes*.

![](../resources/blueprint-purpose-creation-receive-data.svg)
