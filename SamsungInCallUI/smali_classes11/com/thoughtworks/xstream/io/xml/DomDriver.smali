.class public Lcom/thoughtworks/xstream/io/xml/DomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "DomDriver.java"


# instance fields
.field private final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 64
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 65
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 74
    return-void
.end method

.method private createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "source"    # Lorg/xml/sax/InputSource;

    .prologue
    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 95
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 99
    .local v0, "document":Lorg/w3c/dom/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/DomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v3

    .line 100
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 102
    .end local v2    # "e":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_1
    move-exception v2

    .line 103
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 104
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v2

    .line 105
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 106
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2
    .param p1, "in"    # Ljava/io/File;

    .prologue
    .line 89
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 81
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 77
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2
    .param p1, "in"    # Ljava/net/URL;

    .prologue
    .line 85
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 112
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method
