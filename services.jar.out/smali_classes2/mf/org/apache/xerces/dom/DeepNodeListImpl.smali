.class public Lmf/org/apache/xerces/dom/DeepNodeListImpl;
.super Ljava/lang/Object;
.source "DeepNodeListImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected changes:I

.field protected enableNS:Z

.field protected nodes:Ljava/util/ArrayList;

.field protected nsName:Ljava/lang/String;

.field protected rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

.field protected tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->changes:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :goto_0
    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->item(I)Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->changes()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->changes:I

    if-ne v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    :cond_0
    :goto_1
    if-nez v0, :cond_5

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->changes()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->changes:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected nextMatchingElementAfter(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 5

    const/4 v2, 0x0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_19

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne v0, v1, :cond_2

    :goto_1
    move-object v1, v0

    move-object v0, v2

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v1, v3, :cond_3

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :cond_1
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-ne v1, v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    move-object v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-object v1

    :cond_9
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v3, :cond_e

    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v3, :cond_10

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    :cond_e
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    :cond_f
    return-object v1

    :cond_10
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v3, :cond_15

    :cond_13
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v3, :cond_16

    :cond_14
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v3, :cond_18

    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v1

    :cond_16
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    :cond_17
    return-object v1

    :cond_18
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    move-object v0, v1

    goto/16 :goto_0

    :cond_19
    return-object v2
.end method
