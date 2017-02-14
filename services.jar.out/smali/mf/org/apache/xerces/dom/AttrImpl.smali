.class public Lmf/org/apache/xerces/dom/AttrImpl;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Attr;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field static final DTD_URI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field static final serialVersionUID:J = 0x64ff9c955f6bcfc6L


# instance fields
.field protected name:Ljava/lang/String;

.field transient type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    iget-object v1, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0
.end method

.method checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 2

    const/4 v1, 0x3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_2
    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lmf/org/w3c/dom/Node;

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getElement()Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getLength()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move v2, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_0
.end method

.method public getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v0, :cond_6

    :cond_0
    if-eqz v1, :cond_7

    :goto_3
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    return-object v0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_5
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_8

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_4

    :cond_7
    const-string/jumbo v1, ""

    goto :goto_3

    :cond_8
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    const-string/jumbo v0, ""

    return-object v0

    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChildNodes()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    return v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v0, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    if-eq p1, p2, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    if-nez v0, :cond_8

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    invoke-virtual {v5, p0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_1
    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p0, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v2, Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_12

    if-eqz v1, :cond_13

    if-eq p2, v2, :cond_14

    iget-object v2, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    invoke-virtual {v5, p0, v0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    return-object p1

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v5, p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_5
    return-object p1

    :cond_6
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-ne v0, v5, :cond_c

    invoke-virtual {v5, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_e

    :cond_9
    move-object v1, p0

    move v0, v4

    :goto_5
    if-nez v0, :cond_f

    :cond_a
    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_b
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_c
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_d
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_e
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p0, :cond_9

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_f
    if-eqz v1, :cond_a

    if-ne p1, v1, :cond_10

    move v0, v3

    :goto_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v1

    goto :goto_5

    :cond_10
    move v0, v4

    goto :goto_6

    :cond_11
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_1

    :cond_12
    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_2

    :cond_13
    iget-object v1, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v1, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto/16 :goto_2
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iget-boolean v0, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v1, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eq p1, v0, :cond_4

    iget-object v2, p1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_5

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    iput-object v1, p1, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v3, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v3, p1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    invoke-virtual {v1, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v2, p1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    return v0
.end method

.method public isId()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    if-lt v0, p1, :cond_5

    :cond_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    return-object v2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    if-eqz v1, :cond_0

    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method protected makeChildNode()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    iput-object v0, v0, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p0, v0, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    goto :goto_1
.end method

.method public normalize()V
    .locals 5

    const/4 v4, 0x3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v4, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v2

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v4, :cond_3

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    return-void
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method rename(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    if-ne p1, p2, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    return-object p2

    :cond_0
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setIdAttribute(Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method public setReadOnly(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    goto :goto_2
.end method

.method public setSpecified(Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    iget-boolean v0, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v1, :cond_5

    move-object v1, v2

    move-object v3, v0

    :goto_2
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    if-nez v0, :cond_c

    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_1
    :goto_4
    return-void

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    move-object v0, v1

    :goto_5
    iput-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    move-object v1, v2

    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_6
    move-object v3, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/TextImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    iput-object v1, v1, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p0, v1, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_6

    :cond_9
    move-object v0, v1

    move-object v1, v2

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_6

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_2

    :cond_c
    if-eqz v1, :cond_d

    iput-object p1, v1, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    :goto_8
    invoke-virtual {p0, v1, v2, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    invoke-virtual {v4, p0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    move-object v1, v0

    goto :goto_8

    :cond_e
    if-eqz v5, :cond_1

    invoke-virtual {v4, p1, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4
.end method

.method protected synchronizeChildren()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
