.class public Lmf/org/apache/xerces/dom/DOMOutputImpl;
.super Ljava/lang/Object;
.source "DOMOutputImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSOutput;


# instance fields
.field protected fByteStream:Ljava/io/OutputStream;

.field protected fCharStream:Ljava/io/Writer;

.field protected fEncoding:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setByteStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setCharacterStream(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method
