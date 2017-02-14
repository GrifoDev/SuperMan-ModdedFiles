.class public Lmf/javax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private nextSibling:Lmf/org/w3c/dom/Node;

.field private node:Lmf/org/w3c/dom/Node;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v1}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, p3}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getNode()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setNextSibling(Lmf/org/w3c/dom/Node;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    iput-object p1, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    return-void

    :cond_1
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNode(Lmf/org/w3c/dom/Node;)V
    .locals 2

    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-void
.end method
