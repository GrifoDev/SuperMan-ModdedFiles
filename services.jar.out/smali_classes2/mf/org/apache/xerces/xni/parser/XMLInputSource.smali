.class public Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.super Ljava/lang/Object;
.source "XMLInputSource.java"


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCharStream:Ljava/io/Reader;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    iput-object p5, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    iput-object p5, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fByteStream:Ljava/io/InputStream;

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fCharStream:Ljava/io/Reader;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fPublicId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->fSystemId:Ljava/lang/String;

    return-void
.end method
