.class public Lsun/security/ssl/HandshakeOutStream;
.super Ljava/io/OutputStream;
.source "HandshakeOutStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private engine:Lsun/security/ssl/SSLEngineImpl;

.field r:Lsun/security/ssl/OutputRecord;

.field private socket:Lsun/security/ssl/SSLSocketImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/HandshakeOutStream;->-assertionsDisabled:Z

    .line 44
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLEngineImpl;)V
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p4, "engine"    # Lsun/security/ssl/SSLEngineImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 62
    iput-object p4, p0, Lsun/security/ssl/HandshakeOutStream;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 63
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p4}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeOutStream;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V

    .line 61
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLSocketImpl;)V
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;
    .param p4, "socket"    # Lsun/security/ssl/SSLSocketImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    iput-object p4, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    .line 55
    new-instance v0, Lsun/security/ssl/OutputRecord;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeOutStream;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V

    .line 53
    return-void
.end method

.method private checkOverflow(II)V
    .locals 3
    .param p1, "length"    # I
    .param p2, "overflow"    # I

    .prologue
    .line 227
    if-lt p1, p2, :cond_0

    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Field length overflow, the field length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    const-string/jumbo v2, ") should be less than "

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    return-void
.end method

.method private init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    .prologue
    .line 69
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 70
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p2}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 71
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p3}, Lsun/security/ssl/OutputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    .line 68
    return-void
.end method


# virtual methods
.method doHashes()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    .line 81
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    iget-object v2, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSocketImpl;->waitForClose(Z)V

    .line 125
    throw v0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeOutStream;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    check-cast v1, Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v2, v1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V

    goto :goto_0
.end method

.method public putBytes16([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 206
    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 207
    return-void

    .line 209
    :cond_0
    array-length v0, p1

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 211
    array-length v0, p1

    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 212
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 204
    return-void
.end method

.method putBytes24([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 218
    return-void

    .line 220
    :cond_0
    array-length v0, p1

    const/high16 v1, 0x1000000

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 222
    array-length v0, p1

    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    .line 223
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 215
    return-void
.end method

.method putBytes8([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p1, :cond_0

    .line 195
    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 196
    return-void

    .line 198
    :cond_0
    array-length v0, p1

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 200
    array-length v0, p1

    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 201
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    .line 193
    return-void
.end method

.method putInt16(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 162
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 165
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    return-void
.end method

.method putInt24(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/high16 v0, 0x1000000

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 171
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 174
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    return-void
.end method

.method putInt32(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 183
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 185
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 179
    return-void
.end method

.method putInt8(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    .line 157
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    return-void
.end method

.method setFinishedMsg()V
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lsun/security/ssl/HandshakeOutStream;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    check-cast v0, Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/EngineOutputRecord;->setFinishedMsg()V

    .line 143
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 111
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :goto_0
    if-lez p3, :cond_1

    .line 92
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 94
    .local v0, "howmuch":I
    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 98
    add-int/2addr p2, v0

    .line 99
    sub-int/2addr p3, v0

    goto :goto_0

    .line 90
    .end local v0    # "howmuch":I
    :cond_1
    return-void
.end method
