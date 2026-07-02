Operations represent the main actions that a **Producer** can perform to create, suspend, or archive a **Cross-Border E-Service**.

> The **Knodia Prototype** implements a reduced version of the entity lifecycle defined in the [**Knodia whitepaper**](../../../whitepaper/pages/01_abstract.md).

#### **Creation and publication of a draft**

The lifecycle begins with the **creation of a draft**, during which the **Cross-Border E-Service** is not yet available to **Consumers**.

Once completed, the **Cross-Border E-Service** must be **published** immediately.

Upon publication, the **Cross-Border E-Service** moves to the **Active** state, becomes available in the **Knodia Catalogues**, and can be used by **Consumers**.

### **Suspension and reactivation**

The **Producer** can **suspend** a **Cross-Border E-Service** that is in the **Active** state, temporarily stopping access to the service.

A suspended version can be **reactivated**, restoring access for **Consumers**.

## **States**

The following table summarizes the **states** in which a **Cross-Border E-Service** may be, along with their impact on visibility and operability.

| State | Description | Visibility to Consumers | Allowed actions |
| --- | --- | --- | --- |
| **Active** | The **Cross-Border E-Service** is published and visible in the catalogues. New **Consumers** can subscribe to this **Cross-Border E-Service**. | Visible | <ul><li>Used by **Consumers**</li><li>Suspended by **Producer**</li></ul> |
| **Suspended** | Use is temporarily blocked by the **Producer**. | Not available | <ul><li>Reactivated by **Producer**</li><li>Archived by **Producer**</li></ul> |
| **Archived** | The **Cross-Border E-Service** is archived and not visible in the catalogues. | Not visible | <ul><li>None</li></ul> |
