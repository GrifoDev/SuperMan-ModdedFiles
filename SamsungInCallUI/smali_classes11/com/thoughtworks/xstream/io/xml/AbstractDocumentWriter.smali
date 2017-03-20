.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "AbstractDocumentWriter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/xml/DocumentWriter;


# instance fields
.field private final nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final result:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 45
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected abstract createNode(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final endNode()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->endNodeInternally()V

    .line 84
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "node":Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public endNodeInternally()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected final getCurrent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelNodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    return-object v0
.end method

.method public final startNode(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->createNode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "node":Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
