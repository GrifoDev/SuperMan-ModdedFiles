.class public Lcom/thoughtworks/xstream/io/xml/JDom2Driver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "JDom2Driver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom2/Document;

    move-result-object v1

    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;

    move-result-object v1

    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object v1

    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom2/Document;

    move-result-object v1

    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method
