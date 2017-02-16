.class public Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "JettisonMappedXmlDriver.java"


# instance fields
.field protected final convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

.field protected final mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

.field protected final mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

.field protected final useSerializeAsArray:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/codehaus/jettison/mapped/Configuration;

    invoke-direct {v0}, Lorg/codehaus/jettison/mapped/Configuration;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jettison/mapped/Configuration;)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jettison/mapped/Configuration;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;-><init>(Lorg/codehaus/jettison/mapped/Configuration;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jettison/mapped/Configuration;Z)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jettison/mapped/Configuration;
    .param p2, "useSerializeAsArray"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>()V

    .line 77
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    .line 78
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 79
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 80
    iput-boolean p2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    .line 81
    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 7
    .param p1, "in"    # Ljava/io/File;

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "instream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v1    # "instream":Ljava/io/InputStream;
    .local v2, "instream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v4, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v4}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v5

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    if-eqz v2, :cond_0

    .line 134
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    :cond_0
    :goto_0
    return-object v3

    .line 127
    .end local v2    # "instream":Ljava/io/InputStream;
    .restart local v1    # "instream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    :goto_1
    :try_start_3
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    :cond_1
    :goto_3
    throw v3

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "instream":Ljava/io/InputStream;
    .restart local v2    # "instream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "instream":Ljava/io/InputStream;
    .restart local v1    # "instream":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 132
    .end local v1    # "instream":Ljava/io/InputStream;
    .restart local v2    # "instream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "instream":Ljava/io/InputStream;
    .restart local v1    # "instream":Ljava/io/InputStream;
    goto :goto_2

    .line 129
    .end local v1    # "instream":Ljava/io/InputStream;
    .restart local v2    # "instream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "instream":Ljava/io/InputStream;
    .restart local v1    # "instream":Ljava/io/InputStream;
    goto :goto_4

    .line 127
    .end local v1    # "instream":Ljava/io/InputStream;
    .restart local v2    # "instream":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "instream":Ljava/io/InputStream;
    .restart local v1    # "instream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {v3, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {v3, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 6
    .param p1, "in"    # Ljava/net/URL;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "instream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v3, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v3}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v4

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    :try_start_2
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "e":Ljavax/xml/stream/XMLStreamException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 112
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 115
    :cond_1
    :goto_1
    throw v2

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 6
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v3, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    .line 159
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v3, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v3, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    .line 147
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v3, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
