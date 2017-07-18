.class public Lsun/security/ssl/HandshakeInStream;
.super Ljava/io/InputStream;
.source "HandshakeInStream.java"


# instance fields
.field r:Lsun/security/ssl/InputRecord;


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeHash;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lsun/security/ssl/InputRecord;

    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    return-void
.end method

.method private verifyLength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string/jumbo v1, "Not enough data to fill declared vector size"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0
.end method

.method digestNow()V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->doHashes()V

    return-void
.end method

.method public getBytes16()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    return-object v0
.end method

.method getBytes24()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    return-object v0
.end method

.method getBytes8()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    return-object v0
.end method

.method getInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getInt24()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getInt32()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getInt8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->read()I

    move-result v0

    return v0
.end method

.method ignore(I)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->ignore(I)V

    return-void
.end method

.method incomingRecord(Lsun/security/ssl/InputRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->queueHandshake(Lsun/security/ssl/InputRecord;)V

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string/jumbo v2, "Unexpected end of handshake data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string/jumbo v2, "Unexpected end of handshake data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
