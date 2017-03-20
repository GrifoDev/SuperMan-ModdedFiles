.class public Lcom/thoughtworks/xstream/io/xml/JDom2Driver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "JDom2Driver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/io/File;

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 87
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom2/Document;

    move-result-object v1

    .line 88
    .local v1, "document":Lorg/jdom2/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 89
    .end local v0    # "builder":Lorg/jdom2/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom2/Document;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 92
    .local v2, "e":Lorg/jdom2/JDOMException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 63
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;

    move-result-object v1

    .line 64
    .local v1, "document":Lorg/jdom2/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 65
    .end local v0    # "builder":Lorg/jdom2/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom2/Document;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Lorg/jdom2/JDOMException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 51
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object v1

    .line 52
    .local v1, "document":Lorg/jdom2/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 53
    .end local v0    # "builder":Lorg/jdom2/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom2/Document;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 55
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 56
    .local v2, "e":Lorg/jdom2/JDOMException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/net/URL;

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 75
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom2/Document;

    move-result-object v1

    .line 76
    .local v1, "document":Lorg/jdom2/Document;
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/thoughtworks/xstream/io/xml/JDom2Reader;-><init>(Lorg/jdom2/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 77
    .end local v0    # "builder":Lorg/jdom2/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom2/Document;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Lorg/jdom2/JDOMException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 101
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 97
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDom2Driver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method
