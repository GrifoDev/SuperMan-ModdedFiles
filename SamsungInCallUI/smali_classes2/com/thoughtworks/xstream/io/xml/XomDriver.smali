.class public Lcom/thoughtworks/xstream/io/xml/XomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;


# instance fields
.field private final builder:Lnu/xom/Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    new-instance v0, Lnu/xom/Builder;

    invoke-direct {v0}, Lnu/xom/Builder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {v0, p1}, Lnu/xom/Builder;->build(Ljava/io/File;)Lnu/xom/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

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
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {v0, p1}, Lnu/xom/Builder;->build(Ljava/io/InputStream;)Lnu/xom/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

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
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {v0, p1}, Lnu/xom/Builder;->build(Ljava/io/Reader;)Lnu/xom/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

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
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/Builder;->build(Ljava/lang/String;)Lnu/xom/Document;

    move-result-object v0

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

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
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 3

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

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method

.method protected getBuilder()Lnu/xom/Builder;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    return-object v0
.end method
