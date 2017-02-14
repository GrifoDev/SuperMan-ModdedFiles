.class public abstract Lmf/org/apache/xerces/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Node;
.implements Lmf/org/w3c/dom/NodeList;
.implements Lmf/org/w3c/dom/events/EventTarget;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final DOCUMENT_POSITION_IS_CONTAINED:S = 0x10s

.field public static final DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final ELEMENT_DEFINITION_NODE:S = 0x15s

.field protected static final FIRSTCHILD:S = 0x10s

.field protected static final HASSTRING:S = 0x80s

.field protected static final ID:S = 0x200s

.field protected static final IGNORABLEWS:S = 0x40s

.field protected static final NORMALIZED:S = 0x100s

.field protected static final OWNED:S = 0x8s

.field protected static final READONLY:S = 0x1s

.field protected static final SPECIFIED:S = 0x20s

.field protected static final SYNCCHILDREN:S = 0x4s

.field protected static final SYNCDATA:S = 0x2s

.field public static final TREE_POSITION_ANCESTOR:S = 0x4s

.field public static final TREE_POSITION_DESCENDANT:S = 0x8s

.field public static final TREE_POSITION_DISCONNECTED:S = 0x0s

.field public static final TREE_POSITION_EQUIVALENT:S = 0x10s

.field public static final TREE_POSITION_FOLLOWING:S = 0x2s

.field public static final TREE_POSITION_PRECEDING:S = 0x1s

.field public static final TREE_POSITION_SAME_NODE:S = 0x20s

.field static final serialVersionUID:J = -0x57a90af33c3441f0L


# instance fields
.field protected flags:S

.field protected ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected changed()V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changed()V

    return-void
.end method

.method protected changes()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes()I

    move-result v0

    return v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "**Internal Error**"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public compareDocumentPosition(Lmf/org/w3c/dom/Node;)S
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    if-eq p0, p1, :cond_2

    if-nez p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    :goto_1
    if-ne v1, v0, :cond_6

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v3, p0

    :goto_2
    if-eqz v4, :cond_9

    add-int/lit8 v3, v2, 0x1

    if-eq v4, p1, :cond_8

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v9

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, p0

    check-cast v0, Lmf/org/w3c/dom/Document;

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Document;

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v2

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v0

    if-gt v2, v0, :cond_7

    const/16 v0, 0x23

    return v0

    :cond_7
    const/16 v0, 0x25

    return v0

    :cond_8
    const/16 v0, 0xa

    return v0

    :cond_9
    move-object v5, p1

    move-object v4, p1

    :goto_3
    if-eqz v5, :cond_b

    add-int/lit8 v6, v6, 0x1

    if-eq v5, p0, :cond_a

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    move-object v9, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_3

    :cond_a
    const/16 v0, 0x14

    return v0

    :cond_b
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    sparse-switch v5, :sswitch_data_0

    move-object v5, p1

    move v7, v2

    move-object v2, v3

    move-object v3, p0

    :goto_4
    sparse-switch v8, :sswitch_data_1

    move-object v0, v5

    move-object v1, v4

    move v4, v6

    :goto_5
    if-ne v2, v1, :cond_1e

    if-gt v7, v4, :cond_20

    const/4 v1, 0x0

    :goto_6
    sub-int v2, v4, v7

    if-ge v1, v2, :cond_23

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6

    :sswitch_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v7

    if-eq v7, v4, :cond_c

    sparse-switch v8, :sswitch_data_2

    move-object v5, p1

    move-object v3, v1

    move v7, v2

    move-object v2, v1

    goto :goto_4

    :cond_c
    const/16 v0, 0xa

    return v0

    :sswitch_1
    if-ne v5, v8, :cond_d

    const/16 v0, 0xc

    if-eq v5, v0, :cond_f

    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x24

    return v0

    :cond_d
    if-gt v5, v8, :cond_e

    const/4 v0, 0x4

    :goto_7
    return v0

    :cond_e
    const/4 v0, 0x2

    goto :goto_7

    :cond_f
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x24

    return v0

    :cond_10
    const/16 v0, 0x22

    return v0

    :cond_11
    const/16 v0, 0x22

    return v0

    :sswitch_2
    if-eq p1, v1, :cond_13

    if-nez v1, :cond_14

    :cond_12
    move-object v5, p1

    move v7, v2

    move-object v2, v3

    move-object v3, p0

    goto :goto_4

    :cond_13
    const/16 v0, 0xa

    return v0

    :cond_14
    if-ne v1, v0, :cond_12

    const/4 v0, 0x4

    return v0

    :sswitch_3
    move-object v2, v3

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    const/4 v2, 0x2

    if-eq v8, v2, :cond_15

    :goto_8
    const/4 v2, 0x0

    move-object v7, v5

    :goto_9
    if-eqz v7, :cond_2a

    add-int/lit8 v3, v2, 0x1

    if-eq v7, p1, :cond_18

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    move v2, v3

    move-object v3, v7

    move-object v7, v9

    goto :goto_9

    :cond_15
    move-object v2, v4

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eq v2, v5, :cond_16

    move-object p1, v2

    goto :goto_8

    :cond_16
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x24

    return v0

    :cond_17
    const/16 v0, 0x22

    return v0

    :cond_18
    const/16 v0, 0xa

    return v0

    :sswitch_4
    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    if-eq v0, p0, :cond_19

    move-object v0, v1

    move v4, v6

    goto/16 :goto_5

    :cond_19
    const/16 v0, 0x14

    return v0

    :sswitch_5
    if-eq v3, v0, :cond_1b

    if-nez v0, :cond_1c

    :cond_1a
    move-object v0, v5

    move-object v1, v4

    move v4, v6

    goto/16 :goto_5

    :cond_1b
    const/16 v0, 0x14

    return v0

    :cond_1c
    if-ne v1, v0, :cond_1a

    const/4 v0, 0x2

    return v0

    :sswitch_6
    const/4 v1, 0x0

    move-object v0, v4

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v5, v0

    :goto_a
    if-eqz v5, :cond_29

    add-int/lit8 v4, v1, 0x1

    if-eq v5, v3, :cond_1d

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v9, v1

    move v1, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_a

    :cond_1d
    const/16 v0, 0x14

    return v0

    :cond_1e
    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v2

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v0

    if-gt v2, v0, :cond_1f

    const/16 v0, 0x23

    return v0

    :cond_1f
    const/16 v0, 0x25

    return v0

    :cond_20
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v3

    :goto_b
    sub-int v3, v7, v4

    if-ge v2, v3, :cond_21

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_b

    :cond_21
    if-eq v1, v0, :cond_22

    :goto_c
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    :goto_d
    if-eq v2, v0, :cond_25

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_d

    :cond_22
    const/4 v0, 0x2

    return v0

    :cond_23
    if-eq v0, v3, :cond_24

    move-object v1, v3

    goto :goto_c

    :cond_24
    const/4 v0, 0x4

    return v0

    :cond_25
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_26

    if-eq v0, v3, :cond_27

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_e

    :cond_26
    const/4 v0, 0x2

    return v0

    :cond_27
    const/4 v0, 0x4

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0

    :cond_29
    move v9, v1

    move-object v1, v4

    move v4, v9

    goto/16 :goto_5

    :cond_2a
    move v7, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, p1

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_0
        0xa -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_6
        0x6 -> :sswitch_4
        0xa -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public compareTreePosition(Lmf/org/w3c/dom/Node;)S
    .locals 13

    const/4 v3, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v4, 0x0

    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v0, v3, :cond_2

    :cond_0
    return v4

    :cond_1
    const/16 v0, 0x30

    return v0

    :cond_2
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    move-object v0, p0

    move v6, v4

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    return v0

    :cond_4
    move-object v0, p1

    move v5, v4

    move-object v2, p1

    :goto_1
    if-eqz v0, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-eq v0, p0, :cond_5

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_1

    :cond_5
    const/16 v0, 0xa

    return v0

    :cond_6
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v7

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-eq v7, v9, :cond_8

    move-object v3, p0

    :goto_2
    if-eq v8, v9, :cond_9

    move-object v0, p1

    :goto_3
    if-eq v7, v9, :cond_a

    :cond_7
    if-eq v7, v9, :cond_b

    move-object v7, v1

    :goto_4
    if-eq v8, v9, :cond_d

    :goto_5
    if-ne v7, v2, :cond_f

    if-gt v6, v5, :cond_10

    move v1, v4

    :goto_6
    sub-int v2, v5, v6

    if-ge v1, v2, :cond_13

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6

    :cond_8
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto :goto_2

    :cond_9
    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_3

    :cond_a
    if-ne v8, v9, :cond_7

    if-ne v3, v0, :cond_7

    const/16 v0, 0x10

    return v0

    :cond_b
    move-object v7, v3

    move-object v6, v1

    move v1, v4

    :goto_7
    if-eqz v7, :cond_1a

    add-int/lit8 v6, v1, 0x1

    if-eq v7, v0, :cond_c

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move v1, v6

    move-object v6, v7

    move-object v7, v11

    goto :goto_7

    :cond_c
    return v10

    :cond_d
    move-object v5, v0

    move v1, v4

    :goto_8
    if-eqz v5, :cond_19

    add-int/lit8 v2, v1, 0x1

    if-eq v5, v3, :cond_e

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move v1, v2

    move-object v2, v5

    move-object v5, v11

    goto :goto_8

    :cond_e
    return v9

    :cond_f
    return v4

    :cond_10
    move v2, v4

    move-object v1, v3

    :goto_9
    sub-int v3, v6, v5

    if-ge v2, v3, :cond_11

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_9

    :cond_11
    if-eq v1, v0, :cond_12

    :goto_a
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v11, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v11

    :goto_b
    if-eq v2, v0, :cond_15

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_b

    :cond_12
    return v10

    :cond_13
    if-eq v0, v3, :cond_14

    move-object v1, v3

    goto :goto_a

    :cond_14
    return v9

    :cond_15
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_18

    if-eq v0, v1, :cond_16

    if-eq v0, v3, :cond_17

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    :cond_16
    return v10

    :cond_17
    return v9

    :cond_18
    return v4

    :cond_19
    move v5, v1

    goto/16 :goto_5

    :cond_1a
    move-object v7, v6

    move v6, v1

    goto/16 :goto_4
.end method

.method public dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method protected getContainer()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object v3
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method protected getNodeNumber()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber(Lmf/org/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/w3c/dom/Document;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final hasStringValue(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x81

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x80

    goto :goto_0
.end method

.method final hasStringValue()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method final internalIsIgnorableWhitespace()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_a

    return v4

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_8

    return v4

    :cond_3
    if-eq v1, p1, :cond_4

    return v4

    :cond_4
    return v5

    :cond_5
    move-object v0, p0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v3, "xmlns"

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6
    if-eq v1, v0, :cond_7

    return v4

    :cond_7
    return v5

    :cond_8
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_3
    return v4

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    if-eq v0, v5, :cond_9

    return v4

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_a
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_4
    return v3

    :cond_5
    return v3

    :cond_6
    return v2

    :cond_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_8
    return v2

    :cond_9
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_a
    return v2

    :cond_b
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return v2

    :cond_c
    return v2

    :cond_d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_e
    return v2

    :cond_f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return v2

    :cond_10
    return v2
.end method

.method final isFirstChild(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x11

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method final isFirstChild()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isIdAttribute(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x201

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x200

    goto :goto_0
.end method

.method final isIdAttribute()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isIgnorableWhitespace(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x41

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method final isNormalized(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x101

    :goto_1
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x100

    goto :goto_1
.end method

.method final isNormalized()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isOwned(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x9

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method final isOwned()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isReadOnly(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x2

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final isReadOnly()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isSpecified(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x21

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method final isSpecified()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_8

    return-object v8

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_7
    if-eqz v4, :cond_4

    const-string/jumbo v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_8
    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_e

    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_c

    return-object v1

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_4
    if-ne v3, p1, :cond_3

    return-object v2

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_7
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz p1, :cond_9

    :cond_8
    if-eqz v6, :cond_6

    const-string/jumbo v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    :goto_1
    return-object v1

    :cond_9
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    move-object v0, v1

    :cond_a
    return-object v0

    :cond_b
    move-object v1, v0

    goto :goto_1

    :cond_c
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    return-object v1

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    return-object v1

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_2

    return-object v2

    :cond_0
    return-object v2

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    return-object v2

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final needsSyncChildren(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x5

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method final needsSyncChildren()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final needsSyncData(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x3

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method final needsSyncData()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    return-object v0
.end method

.method parentNode()Lmf/org/apache/xerces/dom/NodeImpl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method previousSibling()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NOT_FOUND_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NAMESPACE_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
