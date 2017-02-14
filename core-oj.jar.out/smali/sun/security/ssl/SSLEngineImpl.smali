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

    const-class v0, Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/SSLEngineImpl;->-assertionsDisabled:Z

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->init(Lsun/security/ssl/SSLContextImpl;)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->init(Lsun/security/ssl/SSLContextImpl;)V

    return-void
.end method

.method private changeReadCiphers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "State error, change cipher specs"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Algorithm missing:  "

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
.end method

.method private checkSequenceNumber(Lsun/security/ssl/MAC;B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    if-ne p1, v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sequence number extremely close to overflow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(2^64-1 packets). Closing connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "sequence number overflow"

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    return v3

    :cond_3
    const/16 v0, 0x16

    if-eq p2, v0, :cond_5

    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumIsHuge()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

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

    const-string/jumbo v2, "to avoid sequence number overflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->beginHandshake()V

    return v3

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->checkThrown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeInboundInternal()V
    .locals 3

    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeOutboundInternal()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V

    const/4 v0, 0x6

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    return-void
.end method

.method private closeOutboundInternal()V
    .locals 3

    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLEngineImpl;->warning(B)V

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    :goto_0
    :sswitch_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V

    const/4 v0, 0x6

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    goto :goto_0

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

    monitor-enter p0

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

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->hasOutboundData()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->taskOutstanding()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Using SSLEngineImpl."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    iput v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    iput-boolean v2, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    new-array v0, v2, [B

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->wrapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->unwrapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->acc:Ljava/security/AccessControlContext;

    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    new-instance v0, Lsun/security/ssl/EngineInputRecord;

    invoke-direct {v0, p0}, Lsun/security/ssl/EngineInputRecord;-><init>(Lsun/security/ssl/SSLEngineImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->enableFormatChecks()V

    new-instance v0, Lsun/security/ssl/EngineWriter;

    invoke-direct {v0}, Lsun/security/ssl/EngineWriter;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    return-void
.end method

.method private initHandshaker()V
    .locals 10

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-nez v0, :cond_0

    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    :goto_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    if-eqz v0, :cond_2

    new-instance v0, Lsun/security/ssl/ServerHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-byte v4, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v7, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v7, v6, :cond_1

    :goto_1
    iget-boolean v7, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    iget-object v9, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/ServerHandshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    :goto_2
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lsun/security/ssl/ClientHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_3
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/ClientHandshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

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

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client/Server mode not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    :goto_0
    :pswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    :goto_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ClientHandshaker;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :pswitch_2
    :try_start_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    if-nez v0, :cond_3

    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Warning: Using insecure renegotiation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Insecure renegotiation is not allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v0, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v8}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    invoke-direct {v6, v7, v8, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-nez v6, :cond_2

    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v6, :cond_2

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_2
    monitor-exit p0

    if-nez v3, :cond_3

    invoke-direct {p0, v8}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    :cond_3
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v6, :cond_4

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_4
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v7, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Lsun/security/ssl/EngineInputRecord;->bytesInCompletePacket(Ljava/nio/ByteBuffer;)I

    move-result v4

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I

    move-result v6

    if-le v4, v6, :cond_6

    const v6, 0x8219

    if-le v4, v6, :cond_5

    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Input SSL/TLS record too big: max = 33305 len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLSessionImpl;->expandBufferSizes()V

    :cond_6
    add-int/lit8 v6, v4, -0x5

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    move-result v7

    if-le v6, v7, :cond_7

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    :cond_7
    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    iget-object v6, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-ge v6, v4, :cond_9

    :cond_8
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v6, v7, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    :cond_9
    :try_start_1
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLEngineImpl;->readRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isInboundDone()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    invoke-direct {p0, v3}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    move-result v7

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    move-result v8

    invoke-direct {v6, v5, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v6

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "readRecord"

    invoke-direct {v2, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_1
    move-exception v1

    throw v1

    :cond_a
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0
.end method

.method private readRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->getConnectionState()I

    move-result v6

    if-eq v6, v12, :cond_2

    :try_start_0
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v7, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Lsun/security/ssl/EngineInputRecord;->read(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    :try_start_1
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v6, v7, v8, v5}, Lsun/security/ssl/EngineInputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    monitor-enter p0

    :try_start_2
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    sget-object v6, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ssl"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Received record type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v8}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    :cond_2
    return-object v4

    :catch_0
    move-exception v2

    const/16 v6, 0xa

    invoke-virtual {p0, v6, v2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_3

    const/16 v0, 0x28

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x14

    goto :goto_4

    :pswitch_0
    :try_start_3
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v6, v10, :cond_5

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v6, v7}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    :cond_4
    :goto_5
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-boolean v8, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    invoke-virtual {v6, v7, v8}, Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v6, v6, Lsun/security/ssl/Handshaker;->invalidated:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v6, v10, :cond_0

    const/4 v6, 0x2

    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_5
    :try_start_4
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_5

    :cond_6
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->isDone()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->isSecureRenegotiation()Z

    move-result v6

    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->secureRenegotiation:Z

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getClientVerifyData()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->clientVerifyData:[B

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getServerVerifyData()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->serverVerifyData:[B

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->getSession()Lsun/security/ssl/SSLSessionImpl;

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v6}, Lsun/security/ssl/EngineWriter;->hasOutboundData()Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v6, 0x2

    iput v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v6}, Lsun/security/ssl/Handshaker;->taskOutstanding()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto/16 :goto_2

    :pswitch_1
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v11, :cond_9

    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v10, :cond_9

    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_9

    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data received in non-data state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v7, "Expecting finished message, received data"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    iget-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1, v6}, Lsun/security/ssl/EngineArgs;->scatter(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->recvAlert()V

    goto/16 :goto_2

    :pswitch_3
    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v9, :cond_d

    iget v6, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v6, v10, :cond_d

    :cond_b
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal change cipher spec msg, state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {p0, v7, v6}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    :cond_c
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->changeReadCiphers()V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/security/ssl/SSLEngineImpl;->expectingFinished:Z

    goto/16 :goto_2

    :cond_d
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-ne v6, v9, :cond_b

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    if-eq v6, v9, :cond_c

    goto :goto_6

    :cond_e
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->readMAC:Lsun/security/ssl/MAC;

    iget-object v7, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v7}, Lsun/security/ssl/EngineInputRecord;->contentType()B

    move-result v7

    invoke-direct {p0, v6, v7}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto/16 :goto_3

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

    const/16 v8, 0xa

    const/4 v7, 0x1

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v1, v3

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v0, v3

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v3, "Short alert message"

    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    :cond_0
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "record"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v4

    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

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

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "fatal, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :cond_2
    if-ne v1, v7, :cond_8

    if-nez v0, :cond_7

    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v3, v7, :cond_6

    const-string/jumbo v3, "Received close_notify during handshake"

    invoke-virtual {p0, v8, v3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ne v1, v7, :cond_5

    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "warning, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

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

    :cond_6
    iput-boolean v7, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeInboundInternal()V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3, v0}, Lsun/security/ssl/Handshaker;->handshakeAlert(B)V

    goto :goto_1

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received fatal alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v3, :cond_9

    invoke-static {v0, v2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    :cond_9
    invoke-virtual {p0, v8, v2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;)V

    goto :goto_1
.end method

.method private sendAlert(BB)V
    .locals 8

    const/4 v7, 0x1

    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3}, Lsun/security/ssl/Handshaker;->started()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    new-instance v1, Lsun/security/ssl/EngineOutputRecord;

    const/16 v3, 0x15

    invoke-direct {v1, v3, p0}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, v3}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v4

    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

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

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "fatal, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "description = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_1
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    return-void

    :cond_4
    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-ne p1, v7, :cond_7

    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "warning, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

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

    :catch_0
    move-exception v0

    if-eqz v2, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Exception sending alert: "

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

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static threadName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeAppRecord(Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->checkTaskThrown()V

    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v5}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v7}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v5

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-nez v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v5, :cond_2

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_2
    monitor-exit p0

    if-nez v3, :cond_3

    invoke-direct {p0, v7}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    :cond_3
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v5, :cond_4

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v8, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v5

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_4
    :try_start_1
    iget-object v6, p0, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    invoke-direct {p0, v5, p1}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    invoke-direct {p0, v3}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    move-result v6

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    move-result v7

    invoke-direct {v5, v4, v3, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v5

    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v5, "Write problems"

    invoke-direct {v2, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_5
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0
.end method

.method private writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v1, p1, p2, v2, v3}, Lsun/security/ssl/EngineWriter;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iget v1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lsun/security/ssl/EngineArgs;->deltaApp()I

    move-result v1

    if-lez v1, :cond_1

    iput-boolean v4, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    :cond_1
    return-object v0

    :cond_2
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v2

    invoke-direct {p0, v1, v2}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    move-result v1

    if-eqz v1, :cond_0

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

    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->kickstartHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Couldn\'t kickstart handshaking"

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

    const/4 v4, 0x1

    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "State error, change cipher specs"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    iput-boolean v4, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Algorithm missing:  "

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

    monitor-enter p0

    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeInboundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->recvCN:Z

    const-string/jumbo v0, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

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

    monitor-enter p0

    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->closeOutboundInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fatal(BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string/jumbo p2, "General SSLEngine problem"

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object p3

    :cond_1
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_5

    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fatal: engine already closed.  Rethrowing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    instance-of v3, p3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

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

    :cond_3
    :try_start_1
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_4

    move-object v0, p3

    nop

    nop

    move-object v3, v0

    throw v3

    :cond_4
    instance-of v3, p3, Ljava/lang/Exception;

    if-eqz v3, :cond_5

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "fatal SSLEngine condition"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_5
    sget-object v3, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_6

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fatal error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    iget v1, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x4

    iput v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->inboundDone:Z

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    :cond_7
    if-eqz v1, :cond_8

    const/4 v3, 0x2

    invoke-direct {p0, v3, p1}, Lsun/security/ssl/SSLEngineImpl;->sendAlert(BB)V

    :cond_8
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_9

    move-object v0, p3

    nop

    nop

    move-object v3, v0

    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    :goto_0
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v3}, Lsun/security/ssl/EngineWriter;->closeOutbound()V

    const/4 v3, 0x6

    iput v3, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v3}, Lsun/security/ssl/CipherBox;->dispose()V

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v3}, Lsun/security/ssl/CipherBox;->dispose()V

    instance-of v3, p3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_a

    move-object v0, p3

    check-cast v0, Ljava/lang/RuntimeException;

    move-object v3, v0

    throw v3

    :cond_9
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->closeReason:Ljavax/net/ssl/SSLException;

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method declared-synchronized fatal(BLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAcc()Ljava/security/AccessControlContext;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method public declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->getTask()Lsun/security/ssl/Handshaker$DelegatedTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

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

    monitor-enter p0

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

    monitor-enter p0

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

    monitor-enter p0

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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    monitor-enter p0

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

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    monitor-enter p0

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

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUseClientMode()Z
    .locals 1

    monitor-enter p0

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

    const/4 v0, 0x1

    monitor-enter p0

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

    monitor-enter p0

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

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Lsun/security/ssl/EngineWriter;->isOutboundDone()Z

    move-result v0

    return v0
.end method

.method needToSplitPayload(Lsun/security/ssl/CipherBox;Lsun/security/ssl/ProtocolVersion;)Z
    .locals 2

    iget v0, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->isFirstAppOutputRecord:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z

    goto :goto_0
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lsun/security/ssl/SSLEngineImpl;->enableSessionCreation:Z

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

    return-void

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

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

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

    return-void

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

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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

    return-void

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

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNeedClientAuth(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

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

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

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

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setIdentificationProtocol(Ljava/lang/String;)V

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    sget-object v0, Lsun/security/ssl/SSLEngineImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLEngineImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", setUseClientMode() invoked in state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot change mode after SSL traffic has started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_1
    iget-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    if-eqz p1, :cond_3

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    :cond_2
    if-eqz p1, :cond_5

    :goto_2
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->serverModeSet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

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

    :cond_7
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v3, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    if-eqz p1, :cond_9

    move v2, v0

    :goto_5
    if-eq v3, v2, :cond_8

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lsun/security/ssl/SSLEngineImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_a

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    :cond_8
    if-eqz p1, :cond_b

    :goto_7
    iput-boolean v0, p0, Lsun/security/ssl/SSLEngineImpl;->roleIsServer:Z

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    invoke-direct {p0}, Lsun/security/ssl/SSLEngineImpl;->initHandshaker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_5

    :cond_a
    move v2, v1

    goto :goto_6

    :cond_b
    move v0, v1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLEngineImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWantClientAuth(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLEngineImpl;->doClientAuth:B

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

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

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SSLEngine[hostname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    new-instance v1, Lsun/security/ssl/EngineArgs;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;-><init>(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->unwrapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

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

    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "problem unwrapping net record"

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    return-object v2

    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    throw v2
.end method

.method warning(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLEngineImpl;->sendAlert(BB)V

    return-void
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Lsun/security/ssl/EngineArgs;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0x4219

    if-ge v2, v3, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v4}, Lsun/security/ssl/SSLEngineImpl;->getHSStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->wrapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

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

    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetPos()V

    const-string/jumbo v2, "problem wrapping app data"

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2, v0}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    return-object v4

    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    throw v2
.end method

.method writeRecord(Lsun/security/ssl/EngineOutputRecord;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    iget-object v1, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    iget-object v2, p0, Lsun/security/ssl/SSLEngineImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0, p1, v1, v2}, Lsun/security/ssl/EngineWriter;->writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    iget v0, p0, Lsun/security/ssl/SSLEngineImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/SSLEngineImpl;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLEngineImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLEngineImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)Z

    goto :goto_0
.end method
