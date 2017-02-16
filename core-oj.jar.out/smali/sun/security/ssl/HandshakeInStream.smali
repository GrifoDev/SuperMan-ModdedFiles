.class public Lsun/security/ssl/HandshakeInStream;
.super Ljava/io/InputStream;
.source "HandshakeInStream.java"


# instance fields
.field r:Lsun/security/ssl/InputRecord;


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 64
    new-instance v0, Lsun/security/ssl/InputRecord;

    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    .line 65
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    .line 63
    return-void
.end method

.method private verifyLength(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 221
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 222
    const-string/jumbo v1, "Not enough data to fill declared vector size"

    .line 221
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0
.end method

.method digestNow()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->doHashes()V

    .line 150
    return-void
.end method

.method public getBytes16()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v1

    .line 202
    .local v1, "len":I
    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    .line 203
    new-array v0, v1, [B

    .line 205
    .local v0, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    .line 206
    return-object v0
.end method

.method getBytes24()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    move-result v1

    .line 211
    .local v1, "len":I
    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    .line 212
    new-array v0, v1, [B

    .line 214
    .local v0, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    .line 215
    return-object v0
.end method

.method getBytes8()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    .line 193
    .local v1, "len":I
    invoke-direct {p0, v1}, Lsun/security/ssl/HandshakeInStream;->verifyLength(I)V

    .line 194
    new-array v0, v1, [B

    .line 196
    .local v0, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    .line 197
    return-object v0
.end method

.method getInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
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

    .prologue
    .line 179
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

    .prologue
    .line 183
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 184
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    .line 183
    or-int/2addr v0, v1

    .line 184
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    .line 183
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

    .prologue
    .line 171
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeInStream;->read()I

    move-result v0

    return v0
.end method

.method ignore(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->ignore(I)V

    .line 158
    return-void
.end method

.method incomingRecord(Lsun/security/ssl/InputRecord;)V
    .locals 1
    .param p1, "in"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/InputRecord;->queueHandshake(Lsun/security/ssl/InputRecord;)V

    .line 140
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 120
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 129
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

    .prologue
    .line 85
    iget-object v1, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 86
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string/jumbo v2, "Unexpected end of handshake data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    .line 99
    .local v0, "n":I
    if-eq v0, p3, :cond_0

    .line 100
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string/jumbo v2, "Unexpected end of handshake data"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 124
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ssl/HandshakeInStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
