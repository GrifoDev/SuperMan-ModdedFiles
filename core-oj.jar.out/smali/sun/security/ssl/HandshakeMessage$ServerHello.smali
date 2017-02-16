.class final Lsun/security/ssl/HandshakeMessage$ServerHello;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerHello"
.end annotation


# instance fields
.field cipherSuite:Lsun/security/ssl/CipherSuite;

.field compression_method:B

.field extensions:Lsun/security/ssl/HelloExtensions;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field sessionId:Lsun/security/ssl/SessionId;

.field svr_random:Lsun/security/ssl/RandomCookie;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 345
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 347
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 2
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 345
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 353
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    .line 354
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    .line 353
    invoke-static {v0, v1}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 355
    new-instance v0, Lsun/security/ssl/RandomCookie;

    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    .line 356
    new-instance v0, Lsun/security/ssl/SessionId;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/SessionId;-><init>([B)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    .line 357
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    invoke-static {v0, v1}, Lsun/security/ssl/CipherSuite;->valueOf(II)Lsun/security/ssl/CipherSuite;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    .line 358
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    .line 359
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$ServerHello;->messageLength()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 360
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0, p1}, Lsun/security/ssl/HelloExtensions;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method messageLength()I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method messageType()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x2

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*** ServerHello, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string/jumbo v0, "RandomCookie:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->print(Ljava/io/PrintStream;)V

    .line 397
    const-string/jumbo v0, "Session ID:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cipher Suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Compression Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->print(Ljava/io/PrintStream;)V

    .line 403
    const-string/jumbo v0, "***"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 378
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 379
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->send(Lsun/security/ssl/HandshakeOutStream;)V

    .line 380
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 381
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget v0, v0, Lsun/security/ssl/CipherSuite;->id:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 382
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget v0, v0, Lsun/security/ssl/CipherSuite;->id:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 383
    iget-byte v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 384
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->send(Lsun/security/ssl/HandshakeOutStream;)V

    .line 375
    return-void
.end method
