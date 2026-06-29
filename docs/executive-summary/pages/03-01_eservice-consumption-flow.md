This section describes, at a high level, the actions that – given a Cross-Border E-Service published by a Producer on its Knode (hereinafter the Producer Knode) – allow a Consumer belonging to a different Knode (hereinafter the Consumer Knode) to access the E-Service.

## E-Service publication

The Producer registers the Cross-Border E-Service on the Producer Knode to enable cross-border usage. This includes defining the consumption requirements, which are the characteristics (Attributes) that potential Consumers must satisfy to access the E-Service. 

## E-Service search

Potential Consumers who need to retrieve data or integrate services beyond their own Interoperability Domain can look through the Cross-Border E-Services offered by other Knodes. This is made possible by the interaction between Knodes. The Consumer identifies the E-Service of interest. 

![](../resources/diagram-domains.svg)

## Agreement Request

The potential Consumer can initiate an Agreement Request for the Cross-Border E-Service, provided it possesses the Attributes indicated by the Producer in the consumption requirements. To send the Agreement Request, the Consumer interacts directly with the Consumer Knode, which forwards the request to the Producer Knode.

![](../resources/flow-agreement-request.svg)

The Producer Knode can request additional information from the Consumer to implement the national regulatory framework. In this ckase, the Consumer may need to interact directly with the Producer Knode.

## Purpose Statement

When the Agreement Request is approved, the Consumer declares the conditions for the lawfulness of processing (pursuant to Article 6 of the GDPR), which allow it to acquire personal data through the Cross-Border E-Service. The Consumer interacts directly with the Consumer Knode, which forwards the statement to the Producer Knode.

![](../resources/flow-purpose-creation.svg)

The Producer Knode can request additional information from the Consumer to implement the national regulatory framework regarding the protection of personal data of natural persons. In this case, the Consumer may need to interact directly with the Producer Knode.

## Keychain association

The Consumer associates one or more Keychains registered on the Consumer Knode with the Purpose Statements made. The Consumer deposits in the Keychains the cryptographic material used by its IT systems (hereinafter, clients) to access the Cross-Border E-Service.

![](../resources/flow-keychain-creation.svg)

## Access to a Cross-Border E-Service

The information that the Producer Knode has received and Electronically Archived in the steps described so far constitutes the technical-administrative prerequisites enabling the Producer Knode to issue access tokens to the Consumer's clients to access the Producer's E-Service.

To access a Cross-Border E-Service, the following steps must occur:

1. The Consumer's client constructs the request to send to the Producer Knode to obtain an access token related to one of the Purpose Statements. It electronically seals the request, using the private cryptographic material corresponding to the public material deposited in the Keychain, and sends it to the Producer Knode.
2. The Producer Knode compares the request content with the information it has Electronically Archived. It authenticates the client, interacting with the Consumer Knode to verify the seal using the public cryptographic material deposited in the Keychain. If verification succeeds, it issues an access token to the Consumer's client.
3. The Consumer's client sends a request to the Producer's E-Service using the Producer Knode's access token.
4. The Producer's E-Service verifies the validity and integrity of the received access token. If verification succeeds, it prepares and sends the response to the Consumer's client.

![](../resources/flow-eservice-access.svg)
