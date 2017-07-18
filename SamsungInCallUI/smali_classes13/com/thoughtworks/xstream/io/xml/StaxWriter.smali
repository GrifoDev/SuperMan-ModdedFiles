.class public Lcom/thoughtworks/xstream/io/xml/StaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "StaxWriter.java"


# instance fields
.field private namespaceRepairingMode:Z

.field private final out:Ljavax/xml/stream/XMLStreamWriter;

.field private final qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

.field private tagDepth:I

.field private final writeEnclosingDocument:Z


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    new-instance v5, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    iput-boolean p3, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->writeEnclosingDocument:Z

    iput-boolean p4, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->namespaceRepairingMode:Z

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endNode()V
    .locals 2

    :try_start_0
    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->writeEnclosingDocument:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getQNameMap()Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    return-object v0
.end method

.method protected getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    return-object v0
.end method

.method public isNamespaceRepairingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->namespaceRepairingMode:Z

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x1

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->getQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    move v3, v4

    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    :goto_1
    const/4 v8, 0x0

    if-eqz v4, :cond_1

    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v9

    invoke-interface {v9, v5}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v8, 0x1

    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v5, v10, v7}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9, v5, v7}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->isNamespaceRepairingMode()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9, v5, v7}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    iget v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    return-void

    :cond_4
    move v3, v9

    goto :goto_0

    :cond_5
    move v4, v9

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v9, v10}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_7
    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v9, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v9, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_9
    :try_start_1
    iget-object v9, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
