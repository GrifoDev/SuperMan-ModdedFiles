.class public Lmf/org/apache/xerces/dom/ElementImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "ElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Element;
.implements Lmf/org/w3c/dom/ElementTraversal;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field static final serialVersionUID:J = 0x33965660e8283866L


# instance fields
.field protected attributes:Lmf/org/apache/xerces/dom/AttributeMap;

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData(Z)V

    return-void
.end method

.method private getFirstElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 5

    const/4 v3, 0x0

    move-object v0, p1

    :cond_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :cond_1
    :goto_0
    if-nez v0, :cond_0

    if-eq p1, v1, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    return-object v3

    :cond_3
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_4
    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private getLastElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 5

    const/4 v3, 0x0

    move-object v0, p1

    :cond_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :cond_1
    :goto_0
    if-nez v0, :cond_0

    if-eq p1, v1, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    return-object v3

    :cond_3
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_4
    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private getNextLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getPreviousLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttributeMap;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_1
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_6

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getXMLBaseAttribute()Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v3, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1

    :catch_1
    move-exception v0

    return-object v1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final getChildElementCount()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstElementChild()Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextElementSibling()Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v2
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFirstElementChild()Lmf/org/w3c/dom/Element;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :pswitch_2
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getLastElementChild()Lmf/org/w3c/dom/Element;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :pswitch_2
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLastElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getNextElementSibling()Lmf/org/w3c/dom/Element;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :pswitch_2
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getPreviousElementSibling()Lmf/org/w3c/dom/Element;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getPreviousLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getPreviousLogicalSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :pswitch_2
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLastElementChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getXMLBaseAttribute()Lmf/org/w3c/dom/Attr;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const-string/jumbo v1, "xml:base"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0
.end method

.method protected getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasAttributes()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v1

    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-ne v1, v0, :cond_2

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    invoke-interface {v4}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ne v5, v0, :cond_5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-interface {v3, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_9

    :cond_4
    return v2

    :cond_5
    return v2

    :cond_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_8

    :cond_7
    return v2

    :cond_8
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_9
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    iget-object v1, p1, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/AttributeMap;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_2
.end method

.method public normalize()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-eqz v1, :cond_8

    iget-object v2, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-eq v0, v5, :cond_7

    move-object v1, v2

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    :cond_3
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v6, :cond_3

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    move-object v1, v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/ElementImpl;->isNormalized(Z)V

    return-void

    :cond_a
    move v0, v3

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->normalize()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected reconcileDefaultAttributes()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->reconcileDefaults(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->safeRemoveNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

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

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

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

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->removeItem(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

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

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method rename(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NAMESPACE_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

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

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v1, :cond_4

    :goto_2
    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_4
    new-instance v1, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_2
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v3, v1

    :goto_1
    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v0, v1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1, p2, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_2
    invoke-interface {v1, p3}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_3
    move-object v2, p2

    move-object v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v1, :cond_5

    :goto_4
    invoke-interface {v0, p3}, Lmf/org/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :cond_5
    new-instance v1, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v1, p0, v4}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_4

    :cond_6
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-nez v3, :cond_7

    :goto_5
    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    goto :goto_2

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method public setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v0, p0, v2}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_1
.end method

.method public setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v0, p0, v2}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_1
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    if-eqz p2, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    if-eqz p3, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    goto :goto_0
.end method

.method public setReadOnly(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method protected setXercesAttributeNode(Lmf/org/w3c/dom/Attr;)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->addItem(Lmf/org/w3c/dom/Node;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_1
.end method

.method protected setupDefaultAttributes()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/AttributeMap;

    invoke-direct {v1, p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    goto :goto_0
.end method

.method protected synchronizeData()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementImpl;->setupDefaultAttributes()V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    return-void
.end method
