.class public Lcom/thoughtworks/xstream/io/xml/DomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;


# instance fields
.field private final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

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

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method
