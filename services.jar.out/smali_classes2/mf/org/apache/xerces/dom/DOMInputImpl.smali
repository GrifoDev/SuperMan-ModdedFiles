.class public Lmf/org/apache/xerces/dom/DOMInputImpl;
.super Ljava/lang/Object;
.source "DOMInputImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSInput;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCertifiedText:Z

.field protected fCharStream:Ljava/io/Reader;

.field protected fData:Ljava/lang/String;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCertifiedText()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    return v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    return-void
.end method

.method public setCertifiedText(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method
