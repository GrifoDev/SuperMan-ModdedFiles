.class public final Lsun/security/ssl/SSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final clauth_none:B = 0x0t

.field static final clauth_requested:B = 0x1t

.field static final clauth_required:B = 0x2t

.field private static final cs_CLOSED:I = 0x6

.field private static final cs_DATA:I = 0x2

.field private static final cs_ERROR:I = 0x4

.field private static final cs_HANDSHAKE:I = 0x1

.field private static final cs_RENEGOTIATE:I = 0x3

.field private static final cs_START:I

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private acc:Ljava/security/AccessControlContext;

.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private clientVerifyData:[B

.field private closeReason:Ljavax/net/ssl/SSLException;

.field private connectionState:I

.field private doClientAuth:B

.field private enableSessionCreation:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field private expectingFinished:Z

.field private volatile handshakeSession:Lsun/security/ssl/SSLSessionImpl;

.field private handshaker:Lsun/security/ssl/Handshaker;

.field private identificationProtocol:Ljava/lang/String;

.field private inboundDone:Z

.field inputRecord:Lsun/security/ssl/EngineInputRecord;

.field private isFirstAppOutputRecord:Z

.field outputRecord:Lsun/security/ssl/EngineOutputRecord;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private readCipher:Lsun/security/ssl/CipherBox;

.field private readMAC:Lsun/security/ssl/MAC;

.field private recvCN:Z

.field private roleIsServer:Z

.field private secureRenegotiation:Z

.field private serverModeSet:Z

.field private serverVerifyData:[B

.field private sess:Lsun/security/ssl/SSLSessionImpl;

.field private sslContext:Lsun/security/ssl/SSLContextImpl;

.field private unwrapLock:Ljava/lang/Object;

.field private wrapLock:Ljava/lang/Object;

.field private writeCipher:Lsun/security/ssl/CipherBox;

.field writeLock:Ljava/lang/Object;

.field private writeMAC:Lsun/security/ssl/MAC;

.field writer:Lsun/security/ssl/EngineWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/SSLEngineImpl;->-assertionsDisabled:Z

    .line 322
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    .line 113
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "ctx"    # Lsun/security/ssl/SSLContextImpl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 183
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    .line 245
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    .line 254
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    .line 257
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 260
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    .line 275
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 317
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    .line 335
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->init(Lsun/security/ssl/SSLContextImpl;)V

    .line 333
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, p2, p3}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 183
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    .line 245
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    .line 254
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    .line 257
    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 260
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    .line 275
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 317
    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    .line 343
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->init(Lsun/security/ssl/SSLContextImpl;)V

    .line 341
    return-void
.end method

.method private changeReadCiphers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 567
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 568
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 569
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 570
    const-string/jumbo v3, "State error, change cipher specs"

    .line 569
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    .line 578
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    .line 579
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 566
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 583
    const-string/jumbo v3, "Algorithm missing:  "

    .line 582
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
.end method

.method private checkSequenceNumber(Lsun/security/ssl/MAC;B)Z
    .locals 4
    .param p1, "mac"    # Lsun/security/ssl/MAC;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1359
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    if-ne p1, v0, :cond_1

    .line 1360
    :cond_0
    return v2

    .line 1367
    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1373
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1374
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1375
    const-string/jumbo v2, ", sequence number extremely close to overflow "

    .line 1374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1376
    const-string/jumbo v2, "(2^64-1 packets). Closing connection."

    .line 1374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1379
    :cond_2
    const-string/jumbo v0, "sequence number overflow"

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    .line 1381
    return v3

    .line 1390
    :cond_3
    const/16 v0, 0x16

    if-eq p2, v0, :cond_5

    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumIsHuge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1391
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", request renegotiation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1393
    const-string/jumbo v2, "to avoid sequence number overflow"

    .line 1392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1396
    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->beginHandshake()V

    .line 1397
    return v3

    .line 1400
    :cond_5
    return v2
.end method

.method private declared-synchronized checkTaskThrown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->checkThrown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 511
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeInboundInternal()V
    .locals 3

    .prologue
    .line 1476
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", closeInboundInternal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1483
    :cond_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    if-eqz v0, :cond_1

    .line 1484
    return-void

    .line 1487
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeOutboundInternal()V

    .line 1488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    .line 1491
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 1493
    const/4 v0, 0x6

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1474
    return-void
.end method

.method private closeOutboundInternal()V
    .locals 3

    .prologue
    .line 1409
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", closeOutboundInternal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1416
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    return-void

    .line 1420
    :cond_1
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    sparse-switch v0, :sswitch_data_0

    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLEngineImpl;->warning(B)V

    .line 1442
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    .line 1447
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 1449
    const/4 v0, 0x6

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1407
    return-void

    .line 1426
    :sswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    .line 1427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    goto :goto_0

    .line 1420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized getConnectionState()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 526
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .param p1, "hss"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .prologue
    .line 480
    if-eqz p1, :cond_0

    .line 481
    return-object p1

    .line 484
    :cond_0
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->hasOutboundData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 487
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->taskOutstanding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 491
    :cond_2
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 493
    :cond_3
    :try_start_3
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 502
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 503
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 507
    :cond_4
    :try_start_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;)V
    .locals 4
    .param p1, "ctx"    # Lsun/security/ssl/SSLContextImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 350
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Using SSLEngineImpl."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 355
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    .line 356
    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    .line 365
    iput v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 372
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    .line 373
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    .line 374
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    .line 375
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    .line 378
    iput-boolean v2, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    .line 379
    new-array v0, v2, [B

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    .line 380
    new-array v0, v2, [B

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    .line 383
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    .line 382
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 385
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    .line 384
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->wrapLock:Ljava/lang/Object;

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->unwrapLock:Ljava/lang/Object;

    .line 389
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    .line 397
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->acc:Ljava/security/AccessControlContext;

    .line 406
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    .line 405
    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    .line 407
    new-instance v0, Lsun/security/ssl/EngineInputRecord;

    invoke-direct {v0, p0}, Lsun/security/ssl/EngineInputRecord;-><init>(Lsun/security/ssl/SSLEngineImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    .line 408
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->enableFormatChecks()V

    .line 410
    new-instance v0, Lsun/security/ssl/EngineWriter;

    invoke-direct {v0}, Lsun/security/ssl/EngineWriter;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    .line 349
    return-void
.end method

.method private initHandshaker()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 430
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_0
    return-void

    .line 455
    :pswitch_1
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-nez v0, :cond_0

    .line 456
    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 460
    :goto_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    if-eqz v0, :cond_2

    .line 461
    new-instance v0, Lsun/security/ssl/ServerHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 462
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-byte v4, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    .line 463
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v7, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v7, v6, :cond_1

    .line 464
    :goto_1
    iget-boolean v7, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    iget-object v9, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    move-object v1, p0

    .line 461
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/ServerHandshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    .line 471
    :goto_2
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V

    .line 472
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V

    .line 429
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    goto :goto_0

    :cond_1
    move v6, v1

    .line 463
    goto :goto_1

    .line 466
    :cond_2
    new-instance v0, Lsun/security/ssl/ClientHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 467
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 468
    iget-object v4, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v5, v6, :cond_3

    move v5, v6

    .line 469
    :goto_3
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    move-object v1, p0

    .line 466
    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/ClientHandshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    goto :goto_2

    :cond_3
    move v5, v1

    .line 468
    goto :goto_3

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized kickstartHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 655
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

    .line 692
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string/jumbo v1, "SSLEngine is closing/closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 658
    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 660
    const-string/jumbo v1, "Client/Server mode not yet set."

    .line 659
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    .line 702
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 706
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    .line 711
    :goto_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ClientHandshaker;

    if-eqz v0, :cond_6

    .line 713
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit p0

    .line 654
    return-void

    .line 670
    :pswitch_2
    :try_start_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    if-eqz v0, :cond_4

    .line 675
    :cond_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    if-nez v0, :cond_3

    .line 676
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 678
    const-string/jumbo v1, "Warning: Using insecure renegotiation"

    .line 677
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 683
    :cond_3
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    goto :goto_0

    .line 671
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 672
    const-string/jumbo v1, "Insecure renegotiation is not allowed"

    .line 671
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_3
    monitor-exit p0

    .line 688
    return-void

    .line 708
    :cond_5
    :try_start_3
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_1

    .line 715
    :cond_6
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 719
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V

    .line 723
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v0, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readNetRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    .locals 10
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 784
    const/4 v5, 0x0

    .line 785
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    const/4 v3, 0x0

    .line 790
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    .line 795
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 796
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v8}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    invoke-direct {v6, v7, v8, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    .line 803
    :cond_0
    monitor-enter p0

    .line 804
    :try_start_0
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 805
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-nez v6, :cond_2

    .line 806
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V

    .line 812
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 814
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v6, :cond_2

    .line 815
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    monitor-exit p0

    .line 826
    if-nez v3, :cond_3

    .line 827
    invoke-direct {p0, v8}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 836
    :cond_3
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v6, :cond_4

    .line 837
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    .line 838
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 837
    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    .line 803
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 845
    :cond_4
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v7, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Lsun/security/ssl/EngineInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 848
    .local v4, "packetLen":I
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I

    move-result v6

    if-le v4, v6, :cond_6

    .line 849
    const v6, 0x8219

    if-le v4, v6, :cond_5

    .line 850
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    .line 851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Input SSL/TLS record too big: max = 33305 len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 850
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 857
    :cond_5
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLSessionImpl;->expandBufferSizes()V

    .line 867
    :cond_6
    add-int/lit8 v6, v4, -0x5

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    move-result v7

    if-le v6, v7, :cond_7

    .line 868
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    .line 872
    :cond_7
    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    iget-object v6, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-ge v6, v4, :cond_9

    .line 873
    :cond_8
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    .line 874
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 873
    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    .line 884
    :cond_9
    :try_start_1
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->readRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 903
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 904
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :goto_0
    invoke-direct {p0, v3}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 906
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    .line 907
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    move-result v7

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    move-result v8

    .line 906
    invoke-direct {v6, v5, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    .line 887
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "readRecord"

    invoke-direct {v2, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 889
    .local v2, "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 890
    throw v2

    .line 885
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v1

    .line 886
    .local v1, "e":Ljavax/net/ssl/SSLException;
    throw v1

    .line 903
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_a
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .local v5, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    goto :goto_0
.end method

.method private readRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 13
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 923
    const/4 v4, 0x0

    .line 930
    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    const/4 v5, 0x0

    .line 931
    .local v5, "readBB":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 933
    .local v1, "decryptedBB":Ljava/nio/ByteBuffer;
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->getConnectionState()I

    move-result v6

    if-eq v6, v12, :cond_2

    .line 941
    :try_start_0
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v7, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Lsun/security/ssl/EngineInputRecord;->read(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 953
    .end local v5    # "readBB":Ljava/nio/ByteBuffer;
    :goto_0
    :try_start_1
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v6, v7, v8, v5}, Lsun/security/ssl/EngineInputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 972
    .end local v1    # "decryptedBB":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-enter p0

    .line 973
    :try_start_2
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1089
    sget-object v6, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ssl"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1090
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1091
    const-string/jumbo v8, ", Received record type: "

    .line 1090
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1092
    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v8}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v8

    .line 1090
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1109
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_0
    :goto_2
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ge v6, v12, :cond_1

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_e

    :cond_1
    :goto_3
    monitor-exit p0

    .line 1119
    :cond_2
    return-object v4

    .line 942
    .restart local v1    # "decryptedBB":Ljava/nio/ByteBuffer;
    .restart local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v5    # "readBB":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 943
    .local v2, "e":Ljava/io/IOException;
    const/16 v6, 0xa

    invoke-virtual {p0, v6, v2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/Throwable;)V

    goto :goto_0

    .line 954
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "readBB":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 955
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v6

    .line 956
    const/16 v7, 0x16

    .line 955
    if-ne v6, v7, :cond_3

    .line 957
    const/16 v0, 0x28

    .line 959
    .local v0, "alertType":B
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 958
    .end local v0    # "alertType":B
    :cond_3
    const/16 v0, 0x14

    .restart local v0    # "alertType":B
    goto :goto_4

    .line 986
    .end local v0    # "alertType":B
    .end local v1    # "decryptedBB":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :pswitch_0
    :try_start_3
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    .line 987
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v6

    if-nez v6, :cond_4

    .line 989
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v6, v10, :cond_5

    .line 991
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v6, v7}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    .line 1004
    :cond_4
    :goto_5
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-boolean v8, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    invoke-virtual {v6, v7, v8}, Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V

    .line 1005
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    .line 1007
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v6, v6, Lsun/security/ssl/Handshaker;->invalidated:Z

    if-eqz v6, :cond_6

    .line 1008
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    .line 1010
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v6, v10, :cond_0

    .line 1011
    const/4 v6, 0x2

    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 972
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 993
    .restart local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_5
    :try_start_4
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_5

    .line 1013
    :cond_6
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->isDone()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1016
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->isSecureRenegotiation()Z

    move-result v6

    .line 1015
    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    .line 1017
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getClientVerifyData()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    .line 1018
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getServerVerifyData()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    .line 1020
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getSession()Lsun/security/ssl/SSLSessionImpl;

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    .line 1021
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    .line 1022
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v6}, Lsun/security/ssl/EngineWriter;->hasOutboundData()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1023
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1025
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    .line 1026
    const/4 v6, 0x2

    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    goto/16 :goto_2

    .line 1030
    .restart local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_8
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->taskOutstanding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1031
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto/16 :goto_2

    .line 1037
    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :pswitch_1
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v11, :cond_9

    .line 1038
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v10, :cond_9

    .line 1039
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_9

    .line 1040
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    .line 1041
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data received in non-data state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1042
    iget v8, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1041
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1040
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1045
    :cond_9
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    if-eqz v6, :cond_a

    .line 1046
    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    .line 1047
    const-string/jumbo v7, "Expecting finished message, received data"

    .line 1046
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1054
    :cond_a
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    if-nez v6, :cond_0

    .line 1055
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1, v6}, Lsun/security/ssl/EngineArgs;->scatter(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    .line 1060
    :pswitch_2
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->recvAlert()V

    goto/16 :goto_2

    .line 1064
    :pswitch_3
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v9, :cond_d

    .line 1065
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v10, :cond_d

    .line 1069
    :cond_b
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal change cipher spec msg, state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1070
    iget v7, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1069
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1068
    const/16 v7, 0xa

    invoke-virtual {p0, v7, v6}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    .line 1080
    :cond_c
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->changeReadCiphers()V

    .line 1082
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    goto/16 :goto_2

    .line 1066
    :cond_d
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-ne v6, v9, :cond_b

    .line 1067
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    if-eq v6, v9, :cond_c

    goto :goto_6

    .line 1110
    .end local v4    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_e
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v4, v6, :cond_1

    .line 1111
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    .line 1112
    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v7}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v7

    .line 1111
    invoke-direct {p0, v6, v7}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1113
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .local v4, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    goto/16 :goto_3

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recvAlert()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1707
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v1, v3

    .line 1708
    .local v1, "level":B
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v0, v3

    .line 1709
    .local v0, "description":B
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1710
    const-string/jumbo v3, "Short alert message"

    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    .line 1713
    :cond_0
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "record"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1714
    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    .line 1713
    if-eqz v3, :cond_2

    .line 1715
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v4

    .line 1716
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1717
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", RECV "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ALERT:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1718
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1719
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "fatal, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1725
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1729
    :cond_2
    if-ne v1, v7, :cond_8

    .line 1730
    if-nez v0, :cond_7

    .line 1731
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v3, v7, :cond_6

    .line 1733
    const-string/jumbo v3, "Received close_notify during handshake"

    .line 1732
    invoke-virtual {p0, v8, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    .line 1706
    :cond_3
    :goto_1
    return-void

    .line 1720
    :cond_4
    if-ne v1, v7, :cond_5

    .line 1721
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "warning, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1715
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1723
    :cond_5
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v1, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1735
    :cond_6
    iput-boolean v7, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    .line 1736
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeInboundInternal()V

    goto :goto_1

    .line 1746
    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_3

    .line 1747
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3, v0}, Lsun/security/ssl/Handshaker;->handshakeAlert(B)V

    goto :goto_1

    .line 1751
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received fatal alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1752
    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v4

    .line 1751
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1753
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v3, :cond_9

    .line 1754
    invoke-static {v0, v2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    .line 1756
    :cond_9
    invoke-virtual {p0, v8, v2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    goto :goto_1
.end method

.method private sendAlert(BB)V
    .locals 8
    .param p1, "level"    # B
    .param p2, "description"    # B

    .prologue
    const/4 v7, 0x1

    .line 1766
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 1767
    return-void

    .line 1772
    :cond_0
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v3, v7, :cond_1

    .line 1773
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3}, Lsun/security/ssl/Handshaker;->started()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1777
    :cond_1
    new-instance v1, Lsun/security/ssl/EngineOutputRecord;

    const/16 v3, 0x15

    invoke-direct {v1, v3, p0}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    .line 1778
    .local v1, "r":Lsun/security/ssl/EngineOutputRecord;
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, v3}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 1780
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    .line 1781
    .local v2, "useDebug":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1782
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v4

    .line 1783
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1784
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", SEND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ALERT:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1785
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 1786
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "fatal, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1792
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "description = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1793
    invoke-static {p2}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v6

    .line 1792
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1797
    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1798
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1800
    :try_start_1
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1764
    :cond_3
    :goto_2
    return-void

    .line 1774
    .end local v1    # "r":Lsun/security/ssl/EngineOutputRecord;
    .end local v2    # "useDebug":Z
    :cond_4
    return-void

    .line 1780
    .restart local v1    # "r":Lsun/security/ssl/EngineOutputRecord;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1787
    .restart local v2    # "useDebug":Z
    :cond_6
    if-ne p1, v7, :cond_7

    .line 1788
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "warning, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1782
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1790
    :cond_7
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, p1, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 1803
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1804
    const-string/jumbo v5, ", Exception sending alert: "

    .line 1803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private declared-synchronized setConnectionState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    monitor-enter p0

    .line 530
    :try_start_0
    iput p1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 529
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static threadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2065
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeAppRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    .locals 9
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1171
    const/4 v4, 0x0

    .line 1172
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    const/4 v3, 0x0

    .line 1177
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    .line 1182
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v5}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1183
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v7}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v5

    .line 1190
    :cond_0
    monitor-enter p0

    .line 1191
    :try_start_0
    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 1192
    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-nez v5, :cond_2

    .line 1193
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V

    .line 1199
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 1201
    .local v3, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v5, :cond_2

    .line 1202
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    monitor-exit p0

    .line 1213
    if-nez v3, :cond_3

    .line 1214
    invoke-direct {p0, v7}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 1223
    :cond_3
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v5, :cond_4

    .line 1224
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    .line 1225
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1224
    invoke-direct {v5, v6, v3, v8, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v5

    .line 1190
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1233
    :cond_4
    :try_start_1
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1234
    :try_start_2
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    invoke-direct {p0, v5, p1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1250
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1251
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :goto_0
    invoke-direct {p0, v3}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 1253
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    .line 1254
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    move-result v6

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    move-result v7

    .line 1253
    invoke-direct {v5, v4, v3, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v5

    .line 1233
    .end local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1236
    :catch_0
    move-exception v1

    .line 1237
    .local v1, "e":Ljavax/net/ssl/SSLException;
    throw v1

    .line 1238
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v5, "Write problems"

    invoke-direct {v2, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v2, "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1241
    throw v2

    .line 1250
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljavax/net/ssl/SSLException;
    .restart local v3    # "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_5
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    .local v4, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    goto :goto_0
.end method

.method private writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 5
    .param p1, "eor"    # Lsun/security/ssl/EngineOutputRecord;
    .param p2, "ea"    # Lsun/security/ssl/EngineArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1265
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v1, p1, p2, v2, v3}, Lsun/security/ssl/EngineWriter;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 1279
    .local v0, "hsStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget v1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1290
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    move-result v1

    if-lez v1, :cond_1

    .line 1291
    iput-boolean v4, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    .line 1294
    :cond_1
    return-object v0

    .line 1280
    :cond_2
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    .line 1281
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v2

    invoke-direct {p0, v1, v2}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public beginHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 734
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Couldn\'t kickstart handshaking"

    .line 736
    const/16 v2, 0x28

    invoke-virtual {p0, v2, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method changeWriteCiphers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 604
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v2, v4, :cond_0

    .line 605
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 606
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 607
    const-string/jumbo v3, "State error, change cipher specs"

    .line 606
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    .line 615
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    .line 616
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 627
    iput-boolean v4, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    .line 603
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 620
    const-string/jumbo v3, "Algorithm missing:  "

    .line 619
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
.end method

.method public declared-synchronized closeInbound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1508
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", called closeInbound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1515
    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    if-eqz v0, :cond_2

    .line 1525
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeInboundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1501
    return-void

    .line 1516
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    .line 1518
    const-string/jumbo v0, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    .line 1517
    const/16 v1, 0x50

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeOutbound()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 1456
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", called closeOutbound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1460
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeOutboundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1452
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fatal(BLjava/lang/String;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1587
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1586
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "description"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1615
    if-nez p2, :cond_0

    .line 1616
    :try_start_0
    const-string/jumbo p2, "General SSLEngine problem"

    .line 1618
    :cond_0
    if-nez p3, :cond_1

    .line 1619
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object p3

    .line 1630
    :cond_1
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_5

    .line 1631
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1632
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1633
    const-string/jumbo v5, ", fatal: engine already closed.  Rethrowing "

    .line 1632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1634
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1636
    :cond_2
    instance-of v3, p3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 1637
    move-object v0, p3

    nop

    nop

    move-object v3, v0

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1638
    :cond_3
    :try_start_1
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_4

    .line 1639
    move-object v0, p3

    nop

    nop

    move-object v3, v0

    throw v3

    .line 1640
    :cond_4
    instance-of v3, p3, Ljava/lang/Exception;

    if-eqz v3, :cond_5

    .line 1641
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 1642
    const-string/jumbo v3, "fatal SSLEngine condition"

    .line 1641
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v2, "ssle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1644
    throw v2

    .line 1648
    .end local v2    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_5
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_6

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1649
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1650
    const-string/jumbo v5, ", fatal error: "

    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1651
    const-string/jumbo v5, ": "

    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1651
    const-string/jumbo v5, "\n"

    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1651
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1649
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1657
    :cond_6
    iget v1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1658
    .local v1, "oldState":I
    const/4 v3, 0x4

    iput v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1660
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    .line 1662
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 1663
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v3, :cond_7

    .line 1664
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 1671
    :cond_7
    if-eqz v1, :cond_8

    .line 1672
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1}, Lsun/security/ssl/SSLEngineImpl;->sendAlert(BB)V

    .line 1675
    :cond_8
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_9

    .line 1676
    move-object v0, p3

    nop

    nop

    move-object v3, v0

    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    .line 1687
    :goto_0
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v3}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    .line 1689
    const/4 v3, 0x6

    iput v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1692
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v3}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 1693
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v3}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 1695
    instance-of v3, p3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_a

    .line 1696
    move-object v0, p3

    check-cast v0, Ljava/lang/RuntimeException;

    move-object v3, v0

    throw v3

    .line 1684
    :cond_9
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    .line 1683
    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    goto :goto_0

    .line 1698
    :cond_a
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method declared-synchronized fatal(BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1592
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1591
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAcc()Ljava/security/AccessControlContext;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method public declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 1567
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->getTask()Lsun/security/ssl/Handshaker$DelegatedTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    .line 1570
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1836
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2000
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2030
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1555
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 1860
    :try_start_0
    iget-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    .prologue
    monitor-enter p0

    .line 2037
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 2040
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 2041
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2043
    return-object v0

    .end local v0    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1550
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1955
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWantClientAuth()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    .line 1883
    :try_start_0
    iget-byte v1, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInboundDone()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1533
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOutboundDone()Z
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    move-result v0

    return v0
.end method

.method needToSplitPayload(Lsun/security/ssl/CipherBox;Lsun/security/ssl/ProtocolVersion;)Z
    .locals 2
    .param p1, "cipher"    # Lsun/security/ssl/CipherBox;
    .param p2, "protocol"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 1310
    iget v0, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v0, v1, :cond_0

    .line 1311
    invoke-virtual {p1}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v0

    .line 1310
    if-eqz v0, :cond_0

    .line 1311
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    if-eqz v0, :cond_1

    .line 1310
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1312
    :cond_1
    sget-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z

    goto :goto_0
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    monitor-enter p0

    .line 1824
    :try_start_0
    iput-boolean p1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    .line 1826
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1823
    return-void

    .line 1827
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 2
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1983
    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 1984
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1982
    return-void

    .line 1985
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 2
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2023
    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 2024
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2022
    return-void

    .line 2025
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lsun/security/ssl/SSLSessionImpl;

    .prologue
    monitor-enter p0

    .line 1559
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1558
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    monitor-enter p0

    .line 1849
    if-eqz p1, :cond_1

    .line 1850
    const/4 v0, 0x2

    .line 1849
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    .line 1852
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    .line 1852
    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 1848
    return-void

    .line 1850
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1855
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    iget-byte v1, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    invoke-virtual {v0, v1}, Lsun/security/ssl/ServerHandshaker;->setClientAuth(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    monitor-enter p0

    .line 2050
    :try_start_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 2053
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    .line 2054
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 2055
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->started()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2049
    return-void

    .line 2056
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setIdentificationProtocol(Ljava/lang/String;)V

    .line 2057
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 1893
    :try_start_0
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    packed-switch v2, :pswitch_data_0

    .line 1939
    :cond_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1940
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1941
    const-string/jumbo v2, ", setUseClientMode() invoked in state = "

    .line 1940
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1942
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1940
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1949
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1950
    const-string/jumbo v1, "Cannot change mode after SSL traffic has started"

    .line 1949
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1901
    :pswitch_0
    :try_start_1
    iget-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    if-eqz p1, :cond_3

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    .line 1902
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    .line 1901
    if-eqz v2, :cond_2

    .line 1903
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 1906
    :cond_2
    if-eqz p1, :cond_5

    :goto_2
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    .line 1907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    .line 1892
    return-void

    :cond_3
    move v2, v1

    .line 1901
    goto :goto_0

    :cond_4
    move v2, v1

    .line 1903
    goto :goto_1

    :cond_5
    move v0, v1

    .line 1906
    goto :goto_2

    .line 1918
    :pswitch_1
    :try_start_2
    sget-boolean v2, Lsun/security/ssl/SSLEngineImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v2, :cond_6

    move v2, v1

    :goto_4
    if-nez v2, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    move v2, v0

    goto :goto_4

    .line 1919
    :cond_7
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1925
    iget-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    if-eqz p1, :cond_9

    move v2, v0

    :goto_5
    if-eq v3, v2, :cond_8

    .line 1926
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    .line 1925
    if-eqz v2, :cond_8

    .line 1927
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_a

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 1930
    :cond_8
    if-eqz p1, :cond_b

    :goto_7
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    .line 1931
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    .line 1932
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_9
    move v2, v1

    .line 1925
    goto :goto_5

    :cond_a
    move v2, v1

    .line 1927
    goto :goto_6

    :cond_b
    move v0, v1

    .line 1930
    goto :goto_7

    .line 1893
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    monitor-enter p0

    .line 635
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 636
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 634
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    monitor-enter p0

    .line 1872
    if-eqz p1, :cond_1

    .line 1873
    const/4 v0, 0x1

    .line 1872
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    .line 1875
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    .line 1875
    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 1871
    return-void

    .line 1873
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1878
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    iget-byte v1, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    invoke-virtual {v0, v1}, Lsun/security/ssl/ServerHandshaker;->setClientAuth(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2074
    .local v1, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    const-string/jumbo v2, "SSLEngine[hostname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 2078
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    const-string/jumbo v2, " port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 4
    .param p1, "netData"    # Ljava/nio/ByteBuffer;
    .param p2, "appData"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v1, Lsun/security/ssl/EngineArgs;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;-><init>(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    .line 757
    .local v1, "ea":Lsun/security/ssl/EngineArgs;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->unwrapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 758
    :try_start_1
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->readNetRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 774
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    .line 758
    return-object v3

    .line 757
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 760
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "problem unwrapping net record"

    .line 767
    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 769
    const/4 v2, 0x0

    .line 774
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    .line 769
    return-object v2

    .line 770
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 774
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    .line 770
    throw v2
.end method

.method warning(B)V
    .locals 1
    .param p1, "description"    # B

    .prologue
    .line 1582
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLEngineImpl;->sendAlert(BB)V

    .line 1581
    return-void
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .param p1, "appData"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "netData"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1135
    new-instance v1, Lsun/security/ssl/EngineArgs;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    .line 1142
    .local v1, "ea":Lsun/security/ssl/EngineArgs;
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0x4219

    if-ge v2, v3, :cond_0

    .line 1143
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    .line 1144
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v4}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 1143
    invoke-direct {v2, v3, v4, v5, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v2

    .line 1148
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->wrapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1149
    :try_start_1
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->writeAppRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1161
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    .line 1149
    return-object v3

    .line 1148
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetPos()V

    .line 1155
    const-string/jumbo v2, "problem wrapping app data"

    .line 1154
    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1161
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    .line 1156
    return-object v4

    .line 1157
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 1161
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    .line 1157
    throw v2
.end method

.method writeRecord(Lsun/security/ssl/EngineOutputRecord;)V
    .locals 3
    .param p1, "eor"    # Lsun/security/ssl/EngineOutputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0, p1, v1, v2}, Lsun/security/ssl/EngineWriter;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    .line 1333
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    goto :goto_0
.end method
