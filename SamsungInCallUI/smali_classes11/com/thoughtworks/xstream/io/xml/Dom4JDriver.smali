.class public Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "Dom4JDriver.java"


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private outputFormat:Lorg/dom4j/io/OutputFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 48
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "outputFormat"    # Lorg/dom4j/io/OutputFormat;

    .prologue
    .line 53
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "outputFormat"    # Lorg/dom4j/io/OutputFormat;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 60
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 61
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 62
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "outputFormat"    # Lorg/dom4j/io/OutputFormat;
    .param p3, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 71
    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/io/File;

    .prologue
    .line 128
    :try_start_0
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 129
    .local v2, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    .line 130
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 131
    .end local v0    # "document":Lorg/dom4j/Document;
    .end local v2    # "reader":Lorg/dom4j/io/SAXReader;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/dom4j/DocumentException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 102
    :try_start_0
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 103
    .local v2, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    .line 104
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 105
    .end local v0    # "document":Lorg/dom4j/Document;
    .end local v2    # "reader":Lorg/dom4j/io/SAXReader;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Lorg/dom4j/DocumentException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "text"    # Ljava/io/Reader;

    .prologue
    .line 92
    :try_start_0
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 93
    .local v2, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 94
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 95
    .end local v0    # "document":Lorg/dom4j/Document;
    .end local v2    # "reader":Lorg/dom4j/io/SAXReader;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lorg/dom4j/DocumentException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/net/URL;

    .prologue
    .line 115
    :try_start_0
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 116
    .local v2, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    .line 117
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 118
    .end local v0    # "document":Lorg/dom4j/Document;
    .end local v2    # "reader":Lorg/dom4j/io/SAXReader;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/dom4j/DocumentException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 148
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v1

    return-object v1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 6
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    const/4 v5, 0x0

    .line 137
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 138
    .local v1, "writer":[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;-><init>(Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;Ljava/io/Writer;[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 143
    .local v0, "filter":Ljava/io/FilterWriter;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;

    new-instance v3, Lorg/dom4j/io/XMLWriter;

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v3, v0, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;-><init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    aput-object v2, v1, v5

    .line 144
    aget-object v2, v1, v5

    return-object v2
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 80
    return-void
.end method

.method public setOutputFormat(Lorg/dom4j/io/OutputFormat;)V
    .locals 0
    .param p1, "outputFormat"    # Lorg/dom4j/io/OutputFormat;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 88
    return-void
.end method
