.class public Lmf/org/apache/xerces/dom/DeferredElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "DeferredElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 10

    const/16 v9, 0x3a

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->namespaceURI:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->setupDefaultAttributes()V

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    if-ne v1, v8, :cond_2

    :cond_0
    iput-boolean v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    :goto_2
    invoke-interface {v5, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v1, v2

    :goto_3
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    if-eq v2, v8, :cond_0

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    invoke-interface {v5, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v1, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v6, v7, :cond_3

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    goto :goto_2
.end method
