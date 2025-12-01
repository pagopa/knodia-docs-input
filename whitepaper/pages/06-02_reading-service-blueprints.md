Throughout this proposal, *service blueprints* are used to illustrate the activities and interactions between entitities in the flows of *Knodia*. While the blueprint is intended as an intuitive representation, for clarity, the following notes describe the conventions used.

- Each blueprint is organized into horizontal rows (often called *swimlanes*), which separate the entitites involved in the process. These entitites can be human *actors* (the *Operators* of *Confederate Organizations*) or *systems*. *Knodes* are the systems represented in most blueprints (normally without subdividing them into what internal components they may consist of).
- Each box within the rows represents an action carried out by the corresponding entity. It also indicates:
  - for actions by actors, which user interface is used by the actor (to distinguish actions made on the actor’s own *Knode* or on other *Knodes*);
  - what data is sent to other entities as a result of the action;
  - what data is stored by the system as a result of the action;
  - what processing of data is executed by the system.
- The flow is read by following the arrows, where horizontal arrows represent a sequence of actions carried out by the same subject, while arrows crossing into a different row represent an interaction.
- Dashed boxed and arrows indicate optional parts of the flow.
