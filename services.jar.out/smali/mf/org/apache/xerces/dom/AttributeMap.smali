.class public Lmf/org/apache/xerces/dom/AttributeMap;
.super Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
.source "AttributeMap.java"


# static fields
.field static final serialVersionUID:J = 0x7b21d4678ec641a7L


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    goto :goto_0
.end method

.method private final remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    iput-object v2, p1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1, v0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v3, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_4

    invoke-interface {v1, v6}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2, v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected final addItem(Lmf/org/w3c/dom/Node;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    rsub-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    return v1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto :goto_0
.end method

.method protected cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v3, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto :goto_0
.end method

.method public cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    return-object v0
.end method

.method protected final internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    if-nez p2, :cond_2

    return-object v2

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected final internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    iget-boolean v0, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    iput-object v3, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3, v0, v1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

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
    if-nez p3, :cond_4

    return-object v2

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_a

    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_9

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_2
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isIdAttribute()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_b
    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/AttrNSImpl;

    iput-object p1, v2, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    goto :goto_2
.end method

.method moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/AttributeMap;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p1, v0, v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected reconcileDefaults(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    :cond_4
    return-void

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_4

    iget-object v0, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_7

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    rsub-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method protected removeItem(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    if-ltz v0, :cond_3

    check-cast p1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_7

    rsub-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v3, :cond_8

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    if-nez v2, :cond_6

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    goto/16 :goto_1

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto/16 :goto_2
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_7

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_8

    rsub-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v3, :cond_9

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_2
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    if-nez v2, :cond_6

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto/16 :goto_2
.end method
