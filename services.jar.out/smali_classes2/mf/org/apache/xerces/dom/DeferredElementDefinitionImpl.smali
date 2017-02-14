.class public Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;
.super Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
.source "DeferredElementDefinitionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5d06afa0904b42f7L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncData(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncChildren(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    new-instance v1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->name:Ljava/lang/String;

    return-void
.end method
