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

    const-class v0, Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/HandshakeOutStream;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLEngineImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p4, p0, Lsun/security/ssl/HandshakeOutStream;->engine:Lsun/security/ssl/SSLEngineImpl;

    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p4}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeOutStream;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLSocketImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p4, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    new-instance v0, Lsun/security/ssl/OutputRecord;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeOutStream;->init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V

    return-void
.end method

.method private checkOverflow(II)V
    .locals 3

    if-lt p1, p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Field length overflow, the field length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") should be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private init(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p2}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p3}, Lsun/security/ssl/OutputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    return-void
.end method


# virtual methods
.method doHashes()V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    iget-object v2, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->socket:Lsun/security/ssl/SSLSocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSocketImpl;->waitForClose(Z)V

    throw v0

    :cond_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeOutStream;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    check-cast v1, Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v2, v1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V

    goto :goto_0
.end method

.method public putBytes16([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    return-void

    :cond_0
    array-length v0, p1

    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    return-void
.end method

.method putBytes24([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    return-void

    :cond_0
    array-length v0, p1

    const/high16 v1, 0x1000000

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    return-void
.end method

.method putBytes8([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    return-void

    :cond_0
    array-length v0, p1

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lsun/security/ssl/HandshakeOutStream;->write([BII)V

    return-void
.end method

.method putInt16(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method putInt24(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x1000000

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method putInt32(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method putInt8(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/HandshakeOutStream;->checkOverflow(II)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method setFinishedMsg()V
    .locals 1

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

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    check-cast v0, Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/EngineOutputRecord;->setFinishedMsg()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
