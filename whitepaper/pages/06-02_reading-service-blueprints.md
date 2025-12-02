Throughout this proposal, *service blueprints* are used to illustrate the activities and interactions between entities in the flows of *Knodia*. While the blueprint is intended as an intuitive representation, for clarity, the following notes describe the conventions used.

- Each blueprint is organized into horizontal rows (often called *swimlanes*), which separate the entities involved in the process. These entities can be human *actors* (the *Operators* of *Confederate Organizations*) or *systems*. *Knodes* are the systems represented in most blueprints, usually without subdividing them into their internal components.
- Each box within the rows represents an action performed by the corresponding entity. It also indicates:
  - for actions by actors, which user interface is used by the actor (to distinguish actions made on the actor’s own *Knode* or on other *Knodes*);
  - the data sent to other entities as a result of the action;
  - the data stored by the system as a result of the action;
  - the processing of data executed by the system.
- The flow is read by following the arrows, where horizontal arrows represent a sequence of actions performed by the same subject, while arrows crossing into a different row represent an interaction.
- Dashed boxes and arrows indicate optional parts of the flow.
