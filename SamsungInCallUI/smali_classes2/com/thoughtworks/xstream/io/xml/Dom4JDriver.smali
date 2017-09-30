.class public Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private outputFormat:Lorg/dom4j/io/OutputFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2

    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;-><init>(Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;Ljava/io/Writer;[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;

    new-instance v3, Lorg/dom4j/io/XMLWriter;

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v3, v1, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;-><init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    aput-object v2, v0, v5

    aget-object v0, v0, v5

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public setOutputFormat(Lorg/dom4j/io/OutputFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method
