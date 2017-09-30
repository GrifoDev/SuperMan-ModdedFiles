.class public abstract Lcom/thoughtworks/xstream/io/AbstractDriver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;


# instance fields
.field private replacer:Lcom/thoughtworks/xstream/io/naming/NameCoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/AbstractDriver;->replacer:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/AbstractDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/AbstractDriver;->replacer:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    return-object v0
.end method
