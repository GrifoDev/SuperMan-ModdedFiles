.class public Lmf/org/apache/html/dom/NameNodeListImpl;
.super Lmf/org/apache/xerces/dom/DeepNodeListImpl;
.source "NameNodeListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne v0, v1, :cond_3

    :goto_1
    move-object v1, v0

    move-object v0, v2

    :goto_2
    iget-object v3, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v1, v3, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :cond_1
    :goto_3
    iget-object v0, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne v1, v0, :cond_5

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    return-object v1

    :cond_8
    iget-object v3, p0, Lmf/org/apache/html/dom/NameNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_9
    return-object v2
.end method
