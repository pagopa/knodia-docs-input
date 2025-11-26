# Actions requested by the national regulatory framework

#### Azioni aggiuntive per Richiesta di Fruizione

Come anticipato in § “[Richiesta di Fruizione](#richiesta-di-fruizione)", l’attivazione di una Richiesta di Fruizione può richiedere ulteriori azioni a discrezione del *Producer Interop Node*, per permettere agli Interop Node di implementare eventuali passaggi aggiuntivi richiesti dal quadro normativo del dominio in cui operano, ad esempio richiedere ulteriori informazioni da parte del Consumer per completare le istruttorie.

Per questo motivo, dopo l’invio della richiesta da parte del Consumer, è responsabilità del *Consumer Interop Node* ascoltare gli eventi di cambio di stato della Richiesta di Fruizione, tramite API Federata, si rimanda al § “[Distribuzione della conoscenza tra Nodi](#distribuzione-della-conoscenza-tra-nodi)” per maggiori dettagli.

Prima di arrivare in uno stato attivo, la Richiesta di Fruizione può passare attraverso uno o più dei seguenti stati:

- richiesta di azioni aggiuntive da parte di un *Operator*e del *Producer*, gestite internamente al *Producer Interop Node*, ad esempio una approvazione manuale;  
- richiesta di azioni aggiuntive da parte di un *Operator*e del Consumer, in questo caso il *Producer Interop Node* deve allegare, all’evento di cambio di stato della Richiesta di Fruizione, un link e gli eventuali elementi aggiuntivi per dare seguito alle azioni richieste;

Nell’ipotesi in cui il *Producer Interop Node* inoltri ai *Consumer Interop Nodes* il link, lo stesso deve assicurare che l’interfaccia utente sia implementata almeno nella lingua comune accettata dalla Federazione Transfrontaliera.

Nell’ipotesi in cui il *Consumer Interop Node* riceva il link e gli eventuali elementi aggiuntivi per dare seguito alle azioni richieste, lo stesso deve comunicarli agli *Operator*i del Consumer per permettergli di completare le azioni richieste.

Il seguente service blueprint definisce il flusso delle attività realizzate dai soggetti, *Operator*i e Interop Node, interessati nella precedente ipotesi.

I *Producer Interop Nodes* devono rispettare i seguenti requisiti:

 nel caso in cui siano richieste azioni aggiuntive a carico del Consumer deve comunicare le stesse ai *Consumer Interop Nodes* interessati, il link e gli eventuali elementi necessari per dare seguito alle stesse, tramite API Federata.

I *Consumer Interop Nodes* devono rispettare i seguenti requisiti:

 recuperare presso il *Producer Interop Node* interessato, tramite API Federata, il link e gli eventuali elementi necessari per dare seguito alle stesse;  
 inoltrare ai *Consumers* il link e gli eventuali elementi necessari per dare seguito ricevuti dai *Producer Interop Nodes*.

![](../resources/blueprint-agreement-request-eidas-confirmation-additional-steps.svg)

#### Informazioni aggiuntive per Dichiarazione di Finalità

Come anticipato in § “[Dichiarazione di Finalità](#dichiarazione-di-finalità)”, la Dichiarazione di Finalità può richiedere ulteriori informazioni oltre a quelle predefinite, a discrezione del *Producer Interop Node* per attuare il quadro normativo in materia di protezione digitale delle persone fisiche ad esso riferito. 

Questa richiesta di informazioni aggiuntive avviene tramite un form personalizzato definito dal *Producer Interop Node*, si rimanda a § “[Dichiarazione di Finalità](#dichiarazione-di-finalità)” per il service blueprint e la descrizione del processo di scambio di questo form tra Interop Node diversi quando la dichiarazione spetta al Consumer.

L’indicato form:

 deve essere in un formato condiviso nella Federazione Transfrontaliera che supporti la gestione di più lingue;  
 deve essere reso disponibile dal *Producer Interop Node* almeno nella lingua comune accettata dalla Federazione Transfrontaliera;  
 deve accettare risposte in ognuna delle lingue in cui è reso disponibile.

La definizione del formato standard di questo form che ogni Interop Node deve seguire è uno dei compiti in capo al Consorzio della Federazione, indicato al § “[Considerazioni sulla governance della federazione](#considerazioni-sulla-governance-della-federazione-transfrontaliera)”.

I *Producer Interop Nodes* devono rispettare i seguenti requisiti:

 utilizzare il formato condiviso nella Federazione Transfrontaliera per il form di cui è richiesta la compilazione al Consumer di un E-Service Transfrontaliero;  
 inoltrare il form ai *Consumer Interop Nodes* tramite della API Federata.

I *Consumer Interop Nodes* devono rispettare i seguenti requisiti:

 ricevere il form per dai *Producer Interop Nodes* per il tramite della API Federata;  
 visualizzare e permettere la compilazione del form agli *Operator*i dei Consumer interessati. 

