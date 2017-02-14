.class public Lmf/org/apache/xerces/dom/DocumentTypeImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "DocumentTypeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DocumentType;


# static fields
.field static final serialVersionUID:J = 0x6b92258c19cc7f95L


# instance fields
.field private doctypeNumber:I

.field protected elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected internalSubset:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;

.field private userData:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getElements()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getEntities()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method protected getNodeNumber()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    return v0

    :cond_0
    invoke-super {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getNodeNumber()I

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocTypeNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getNotations()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object v0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_0
    check-cast p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_7
    iget-object v3, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v0, :cond_18

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v0, :cond_1a

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v0, :cond_1b

    :cond_9
    iget-object v3, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v0, :cond_1e

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v0, :cond_20

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v0, :cond_21

    :cond_b
    const/4 v0, 0x1

    return v0

    :cond_c
    return v2

    :cond_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0

    :cond_e
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_f
    :goto_4
    return v2

    :cond_10
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_12
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_14
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_15
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_16
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_17
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_18
    if-eqz v3, :cond_8

    :cond_19
    return v2

    :cond_1a
    if-eqz v3, :cond_19

    goto :goto_2

    :cond_1b
    if-eqz v3, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v1

    if-ne v0, v1, :cond_1c

    move v1, v2

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1d

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1c
    return v2

    :cond_1d
    return v2

    :cond_1e
    if-eqz v3, :cond_a

    :cond_1f
    return v2

    :cond_20
    if-eqz v3, :cond_1f

    goto/16 :goto_3

    :cond_21
    if-eqz v3, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v1

    if-ne v0, v1, :cond_22

    move v1, v2

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_23

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_22
    return v2

    :cond_23
    return v2
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    new-instance v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    invoke-direct {v1, p0, p2, p3}, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-nez v0, :cond_3

    :cond_2
    return-object v2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object v0

    :cond_4
    check-cast v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object v0
.end method
