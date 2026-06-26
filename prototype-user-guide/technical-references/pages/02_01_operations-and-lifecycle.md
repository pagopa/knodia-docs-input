## **Operations**

Operations represent the main actions that the **Producer** can perform to create, suspend, or archive an **Croos-Border E-Service**.

> **Knodia Prototype** implements an entity lifecycle reduction defined in the [**Knodia whitepaper**](../../../whitepaper/pages/01_abstract.md).

#### **Creation and publication of a draft**

The lifecycle begins with the **creation of a draft**, during which the **Croos-Border E-Service** is not yet available to **Consumers**.

Once completed, the draft can be **published** immediately or at a later time.

Upon publication, the **Croos-Border E-Service** moves to the **published** state, becomes available in the **Knodia Catalogues**, and can be consumed by **Consumers**.

### **Suspension and reactivation**

The **Producer** can **suspend** an **Croos-Border E-Service** in the **published**, temporarily stopping access to the service.

A suspended version can be **reactivated**, restoring access for **Consumers**.


## **States**

The following table summarizes the **states** in which an **Croos-Border E-Service** may be, along with their impact on visibility and operability.

| State | Description| Visibility to Consumers | Allowed actions |
| --- | --- | --- | --- |
| **Draft** | Being created and not yet published. **Croos-Border E-Service** is not visible in the catalogues. | Not visible | <li>Edit</li><li> Delete</li> |
| **Active** | **Croos-Border E-Service** is published and visible in the catalogues. New **Consumers** subscribe to this **Croos-Border E-Service**. | Visible | <li>Subscription</li><li>Suspension</li> |
| **Suspended** | Use temporarily blocked by the **Producer**. | Not available | <li>Reactivation</li> |
| **Archived** | **Croos-Border E-Service** is archived and not visible in the catalogues. | Not visible | <li>None</li> |