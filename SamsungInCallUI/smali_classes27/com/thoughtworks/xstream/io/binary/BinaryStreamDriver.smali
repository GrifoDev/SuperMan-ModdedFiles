.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "BinaryStreamDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>()V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The BinaryDriver cannot use character-oriented input streams."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 55
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The BinaryDriver cannot use character-oriented output streams."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
