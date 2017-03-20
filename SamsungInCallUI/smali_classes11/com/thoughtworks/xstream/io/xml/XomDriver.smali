.class public Lcom/thoughtworks/xstream/io/xml/XomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "XomDriver.java"


# instance fields
.field private final builder:Lnu/xom/Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 49
    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 65
    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;)V
    .locals 1
    .param p1, "builder"    # Lnu/xom/Builder;

    .prologue
    .line 42
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "builder"    # Lnu/xom/Builder;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 57
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    .line 58
    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "builder"    # Lnu/xom/Builder;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 73
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 74
    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "in"    # Ljava/io/File;

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {v2, p1}, Lnu/xom/Builder;->build(Ljava/io/File;)Lnu/xom/Document;

    move-result-object v0

    .line 122
    .local v0, "document":Lnu/xom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 123
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lnu/xom/ValidityException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 125
    .end local v1    # "e":Lnu/xom/ValidityException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Lnu/xom/ParsingException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 127
    .end local v1    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {v2, p1}, Lnu/xom/Builder;->build(Ljava/io/InputStream;)Lnu/xom/Document;

    move-result-object v0

    .line 96
    .local v0, "document":Lnu/xom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 97
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lnu/xom/ValidityException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 99
    .end local v1    # "e":Lnu/xom/ValidityException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Lnu/xom/ParsingException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 101
    .end local v1    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "text"    # Ljava/io/Reader;

    .prologue
    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {v2, p1}, Lnu/xom/Builder;->build(Ljava/io/Reader;)Lnu/xom/Document;

    move-result-object v0

    .line 83
    .local v0, "document":Lnu/xom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 84
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Lnu/xom/ValidityException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v1    # "e":Lnu/xom/ValidityException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Lnu/xom/ParsingException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    .end local v1    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "in"    # Ljava/net/URL;

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnu/xom/Builder;->build(Ljava/lang/String;)Lnu/xom/Document;

    move-result-object v0

    .line 109
    .local v0, "document":Lnu/xom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 110
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Lnu/xom/ValidityException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 112
    .end local v1    # "e":Lnu/xom/ValidityException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Lnu/xom/ParsingException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 114
    .end local v1    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 137
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 133
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method

.method protected getBuilder()Lnu/xom/Builder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    return-object v0
.end method
