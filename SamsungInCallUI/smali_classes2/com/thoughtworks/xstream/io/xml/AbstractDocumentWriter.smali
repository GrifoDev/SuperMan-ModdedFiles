.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;

# interfaces
.implements Lcom/thoughtworks/xstream/io/xml/DocumentWriter;


# instance fields
.field private final nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final result:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method protected abstract createNode(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final endNode()V
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->endNodeInternally()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public endNodeInternally()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method protected final getCurrent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelNodes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->result:Ljava/util/List;

    return-object v0
.end method

.method public final startNode(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->createNode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;->nodeStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
