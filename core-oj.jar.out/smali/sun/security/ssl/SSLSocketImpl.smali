.class public final Lsun/security/ssl/SSLSocketImpl;
.super Lsun/security/ssl/BaseSSLSocketImpl;
.source "SSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final cs_APP_CLOSED:I = 0x7

.field private static final cs_CLOSED:I = 0x6

.field private static final cs_DATA:I = 0x2

.field private static final cs_ERROR:I = 0x4

.field private static final cs_HANDSHAKE:I = 0x1

.field private static final cs_RENEGOTIATE:I = 0x3

.field private static final cs_SENT_CLOSE:I = 0x5

.field private static final cs_START:I

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private acc:Ljava/security/AccessControlContext;

.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private autoClose:Z

.field private clientVerifyData:[B

.field private closeReason:Ljavax/net/ssl/SSLException;

.field private connectionState:I

.field private doClientAuth:B

.field private enableSessionCreation:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field private expectingFinished:Z

.field private handshakeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field private final handshakeLock:Ljava/lang/Object;

.field private volatile handshakeSession:Lsun/security/ssl/SSLSessionImpl;

.field private handshaker:Lsun/security/ssl/Handshaker;

.field private heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

.field private host:Ljava/lang/String;

.field private identificationProtocol:Ljava/lang/String;

.field private input:Lsun/security/ssl/AppInputStream;

.field private inrec:Lsun/security/ssl/InputRecord;

.field private isFirstAppOutputRecord:Z

.field private output:Lsun/security/ssl/AppOutputStream;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private rawHostname:Ljava/lang/String;

.field private readCipher:Lsun/security/ssl/CipherBox;

.field private final readLock:Ljava/lang/Object;

.field private readMAC:Lsun/security/ssl/MAC;

.field private roleIsServer:Z

.field private secureRenegotiation:Z

.field private serverVerifyData:[B

.field private sess:Lsun/security/ssl/SSLSessionImpl;

.field private sockInput:Ljava/io/InputStream;

.field private sockOutput:Ljava/io/OutputStream;

.field private sslContext:Lsun/security/ssl/SSLContextImpl;

.field private writeCipher:Lsun/security/ssl/CipherBox;

.field final writeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private writeMAC:Lsun/security/ssl/MAC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/SSLSocketImpl;->-assertionsDisabled:Z

    .line 372
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    .line 65
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 511
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 198
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 510
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 198
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 401
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    .line 403
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 405
    if-eqz p2, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 407
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 399
    return-void

    .line 406
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 198
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 444
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    .line 445
    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    .line 446
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 447
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    .line 449
    if-eqz p2, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 451
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 442
    return-void

    .line 450
    .end local v0    # "socketAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 423
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 198
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 424
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 425
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 426
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 422
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 5
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "host"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "localAddr"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 470
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 198
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 471
    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 472
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    .line 473
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 474
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 469
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "sock"    # Ljava/net/Socket;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 534
    invoke-direct {p0, p2}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>(Ljava/net/Socket;)V

    .line 198
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 536
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Underlying socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    .line 540
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 542
    iput-boolean p5, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 543
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 533
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;ZLsun/security/ssl/CipherSuiteList;BZLsun/security/ssl/ProtocolList;Ljava/lang/String;Ljava/security/AlgorithmConstraints;)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "serverMode"    # Z
    .param p3, "suites"    # Lsun/security/ssl/CipherSuiteList;
    .param p4, "clientAuth"    # B
    .param p5, "sessionCreation"    # Z
    .param p6, "protocols"    # Lsun/security/ssl/ProtocolList;
    .param p7, "identificationProtocol"    # Ljava/lang/String;
    .param p8, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    .line 198
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 200
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    .line 215
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 293
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 369
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 377
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 383
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    .line 490
    iput-byte p4, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    .line 491
    iput-boolean p5, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 492
    iput-object p7, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 493
    iput-object p8, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 494
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    .line 499
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 500
    iput-object p6, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 487
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
    .line 2032
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2033
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2034
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 2035
    const-string/jumbo v3, "State error, change cipher specs"

    .line 2034
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2040
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    .line 2043
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    .line 2044
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 2031
    return-void

    .line 2045
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 2048
    const-string/jumbo v3, "Algorithm missing:  "

    .line 2047
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
.end method

.method private checkSequenceNumber(Lsun/security/ssl/MAC;B)V
    .locals 3
    .param p1, "mac"    # Lsun/security/ssl/MAC;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    if-ne p1, v0, :cond_1

    .line 1157
    :cond_0
    return-void

    .line 1164
    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1170
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1172
    const-string/jumbo v2, ", sequence number extremely close to overflow "

    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1173
    const-string/jumbo v2, "(2^64-1 packets). Closing connection."

    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1177
    :cond_2
    const-string/jumbo v0, "sequence number overflow"

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    .line 1186
    :cond_3
    const/16 v0, 0x16

    if-eq p2, v0, :cond_5

    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumIsHuge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1187
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1188
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", request renegotiation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    const-string/jumbo v2, "to avoid sequence number overflow"

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1192
    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->startHandshake()V

    .line 1150
    :cond_5
    return-void
.end method

.method private closeInternal(Z)V
    .locals 12
    .param p1, "selfInitiated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v7, 0x6

    const/4 v6, 0x7

    .line 1553
    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ssl"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1554
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", called closeInternal("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1555
    const-string/jumbo v9, ")"

    .line 1554
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1558
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v3

    .line 1559
    .local v3, "state":I
    const/4 v1, 0x0

    .line 1560
    .local v1, "closeSocketCalled":Z
    const/4 v0, 0x0

    .line 1562
    .local v0, "cachedThrowable":Ljava/lang/Throwable;
    packed-switch v3, :pswitch_data_0

    .line 1593
    :pswitch_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    :try_start_1
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-eq v3, v7, :cond_1

    .line 1595
    if-ne v3, v11, :cond_6

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1655
    monitor-enter p0

    .line 1657
    :try_start_3
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_a

    :goto_0
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 1662
    if-eqz v1, :cond_2

    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    .line 1596
    :cond_2
    return-void

    .line 1565
    :pswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1655
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    :pswitch_2
    monitor-enter p0

    .line 1657
    :try_start_5
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_16

    :goto_2
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    .line 1662
    if-eqz v1, :cond_4

    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    .line 1666
    :cond_4
    if-eqz v0, :cond_1b

    .line 1671
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_17

    .line 1672
    nop

    nop

    throw v0

    .line 1575
    .restart local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :pswitch_3
    :try_start_6
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->closeSocket()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1654
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 1655
    monitor-enter p0

    .line 1657
    :try_start_7
    iget v8, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v8, v6, :cond_18

    :goto_3
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    monitor-exit p0

    .line 1662
    if-eqz v1, :cond_5

    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    .line 1666
    :cond_5
    if-eqz v0, :cond_1a

    .line 1671
    instance-of v6, v0, Ljava/lang/Error;

    if-eqz v6, :cond_19

    .line 1672
    nop

    nop

    throw v0

    .line 1595
    .restart local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_6
    if-eq v3, v6, :cond_1

    .line 1598
    if-eq v3, v10, :cond_7

    .line 1600
    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {p0, v5}, Lsun/security/ssl/SSLSocketImpl;->warning(B)V

    .line 1601
    const/4 v5, 0x5

    iput v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_7
    :goto_4
    :try_start_9
    monitor-exit p0

    .line 1615
    if-ne v3, v10, :cond_15

    .line 1616
    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_8

    const-string/jumbo v5, "ssl"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1617
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1618
    const-string/jumbo v9, ", close invoked again; state = "

    .line 1617
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1619
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v9

    .line 1617
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1621
    :cond_8
    if-nez p1, :cond_e

    .line 1655
    monitor-enter p0

    .line 1657
    :try_start_a
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_b

    :goto_5
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    .line 1662
    if-eqz v1, :cond_9

    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    .line 1666
    :cond_9
    if-eqz v0, :cond_d

    .line 1671
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_c

    .line 1672
    nop

    nop

    throw v0

    .restart local v0    # "cachedThrowable":Ljava/lang/Throwable;
    :cond_a
    move v6, v7

    .line 1658
    goto/16 :goto_0

    .line 1655
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1602
    :catch_0
    move-exception v4

    .line 1605
    .local v4, "th":Ljava/lang/Throwable;
    const/4 v5, 0x4

    :try_start_b
    iput v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1607
    move-object v0, v4

    .line 1608
    .local v0, "cachedThrowable":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 1609
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    .line 1593
    .end local v0    # "cachedThrowable":Ljava/lang/Throwable;
    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_2
    move-exception v5

    :try_start_c
    monitor-exit p0

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_b
    move v6, v7

    .line 1658
    goto :goto_5

    .line 1655
    :catchall_3
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1673
    :cond_c
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_d

    .line 1674
    nop

    nop

    throw v0

    .line 1626
    :cond_d
    return-void

    .line 1630
    :cond_e
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1631
    :goto_6
    :try_start_e
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-ge v5, v7, :cond_f

    .line 1633
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_6

    .line 1634
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_6

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_f
    :try_start_10
    monitor-exit p0

    .line 1639
    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_10

    const-string/jumbo v5, "ssl"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1640
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1641
    const-string/jumbo v9, ", after primary close; state = "

    .line 1640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1642
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v9

    .line 1640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1655
    :cond_10
    monitor-enter p0

    .line 1657
    :try_start_11
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_12

    :goto_7
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1660
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    monitor-exit p0

    .line 1662
    if-eqz v1, :cond_11

    .line 1664
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    .line 1666
    :cond_11
    if-eqz v0, :cond_14

    .line 1671
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_13

    .line 1672
    nop

    nop

    throw v0

    .line 1630
    :catchall_4
    move-exception v5

    :try_start_12
    monitor-exit p0

    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_12
    move v6, v7

    .line 1658
    goto :goto_7

    .line 1655
    :catchall_5
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1673
    :cond_13
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_14

    .line 1674
    nop

    nop

    throw v0

    .line 1644
    :cond_14
    return-void

    .line 1647
    :cond_15
    if-nez v1, :cond_3

    .line 1648
    const/4 v1, 0x1

    .line 1649
    :try_start_13
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    :cond_16
    move v6, v7

    .line 1658
    goto/16 :goto_2

    .line 1655
    :catchall_6
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1673
    :cond_17
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_1b

    .line 1674
    nop

    nop

    throw v0

    :cond_18
    move v6, v7

    .line 1658
    goto/16 :goto_3

    .line 1655
    :catchall_7
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1673
    :cond_19
    instance-of v6, v0, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_1a

    .line 1674
    nop

    nop

    throw v0

    .line 1654
    :cond_1a
    throw v5

    .line 1552
    :cond_1b
    return-void

    .line 1562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private closeSocket(Z)V
    .locals 3
    .param p1, "selfInitiated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", called closeSocket(selfInitiated)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1510
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_2

    .line 1511
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->close()V

    .line 1506
    :cond_1
    :goto_0
    return-void

    .line 1512
    :cond_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_3

    .line 1513
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 1514
    :cond_3
    if-eqz p1, :cond_1

    .line 1517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->waitForClose(Z)V

    goto :goto_0
.end method

.method private disposeCiphers()V
    .locals 2

    .prologue
    .line 1728
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1729
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1732
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1734
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1736
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1726
    return-void

    .line 1728
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1735
    :catchall_1
    move-exception v0

    .line 1736
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1735
    throw v0
.end method

.method private declared-synchronized getConnectionState()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 649
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleException(Ljava/lang/Exception;Z)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "resumable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1774
    :try_start_0
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1775
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1776
    const-string/jumbo v5, ", handling exception: "

    .line 1775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1776
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1781
    :cond_0
    instance-of v3, p1, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1782
    nop

    nop

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1787
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_3

    .line 1788
    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_2

    .line 1789
    nop

    nop

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1795
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "Unexpected exception"

    .line 1794
    const/16 v4, 0x50

    invoke-static {v4, p1, v3}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    .line 1800
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    .line 1801
    .local v2, "isSSLException":Z
    if-nez v2, :cond_4

    instance-of v3, p1, Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 1806
    const/16 v3, 0xa

    :try_start_2
    invoke-virtual {p0, v3, p1}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1811
    :goto_0
    :try_start_3
    nop

    nop

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1807
    .restart local p1    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .local v1, "ee":Ljava/io/IOException;
    goto :goto_0

    .line 1816
    .end local v1    # "ee":Ljava/io/IOException;
    :cond_4
    if-eqz v2, :cond_6

    .line 1817
    instance-of v3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v3, :cond_5

    .line 1818
    const/16 v0, 0x28

    .line 1825
    .local v0, "alertType":B
    :goto_1
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1773
    return-void

    .line 1820
    .end local v0    # "alertType":B
    :cond_5
    const/16 v0, 0xa

    .restart local v0    # "alertType":B
    goto :goto_1

    .line 1823
    .end local v0    # "alertType":B
    :cond_6
    const/16 v0, 0x50

    .restart local v0    # "alertType":B
    goto :goto_1
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;Z)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "isServer"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 550
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 551
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    .line 552
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    .line 558
    iput-boolean p2, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    .line 559
    iput v1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 566
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    .line 567
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    .line 568
    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    .line 569
    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    .line 572
    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    .line 573
    new-array v0, v1, [B

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    .line 574
    new-array v0, v1, [B

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    .line 577
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    .line 576
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 579
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    .line 578
    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 581
    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    .line 584
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->acc:Ljava/security/AccessControlContext;

    .line 586
    new-instance v0, Lsun/security/ssl/AppInputStream;

    invoke-direct {v0, p0}, Lsun/security/ssl/AppInputStream;-><init>(Lsun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    .line 587
    new-instance v0, Lsun/security/ssl/AppOutputStream;

    invoke-direct {v0, p0}, Lsun/security/ssl/AppOutputStream;-><init>(Lsun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    .line 549
    return-void
.end method

.method private initHandshaker()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1231
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

    .line 1252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :pswitch_0
    return-void

    .line 1256
    :pswitch_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-nez v0, :cond_0

    .line 1257
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1261
    :goto_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    if-eqz v0, :cond_2

    .line 1262
    new-instance v0, Lsun/security/ssl/ServerHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 1263
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-byte v4, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    .line 1264
    iget-object v5, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v7, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v7, v6, :cond_1

    .line 1265
    :goto_1
    iget-boolean v7, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    iget-object v8, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    iget-object v9, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    move-object v1, p0

    .line 1262
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/ServerHandshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    .line 1272
    :goto_2
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V

    .line 1273
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V

    .line 1230
    return-void

    .line 1259
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    goto :goto_0

    :cond_1
    move v6, v1

    .line 1264
    goto :goto_1

    .line 1267
    :cond_2
    new-instance v0, Lsun/security/ssl/ClientHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 1268
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 1269
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_3

    move v5, v6

    .line 1270
    :goto_3
    iget-boolean v6, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    iget-object v7, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    iget-object v8, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    move-object v1, p0

    .line 1267
    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/ClientHandshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    goto :goto_2

    :cond_3
    move v5, v1

    .line 1269
    goto :goto_3

    .line 1231
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

    .line 1366
    :try_start_0
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

    .line 1402
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "connection is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1373
    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    if-eqz v0, :cond_3

    .line 1378
    :cond_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    if-nez v0, :cond_1

    .line 1379
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1381
    const-string/jumbo v1, "Warning: Using insecure renegotiation"

    .line 1380
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1386
    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    .line 1412
    :pswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1414
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1416
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    .line 1421
    :goto_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ClientHandshaker;

    if-eqz v0, :cond_5

    .line 1423
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    .line 1364
    return-void

    .line 1374
    :cond_3
    :try_start_2
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 1375
    const-string/jumbo v1, "Insecure renegotiation is not allowed"

    .line 1374
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_2
    monitor-exit p0

    .line 1391
    return-void

    .line 1398
    :pswitch_3
    :try_start_3
    new-instance v0, Ljava/net/SocketException;

    .line 1399
    const-string/jumbo v1, "handshaking attempted on unconnected socket"

    .line 1398
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_4
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_0

    .line 1425
    :cond_5
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1429
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V

    .line 1432
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v0, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private performInitialHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1286
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1287
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1288
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->kickstartHandshake()V

    .line 1299
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    if-nez v0, :cond_0

    .line 1300
    new-instance v0, Lsun/security/ssl/InputRecord;

    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    .line 1307
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v2, v2, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2}, Lsun/security/ssl/InputRecord;->getHandshakeHash()Lsun/security/ssl/HandshakeHash;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    .line 1308
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v2, v2, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2}, Lsun/security/ssl/InputRecord;->getHelloVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 1309
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->enableFormatChecks()V

    .line 1312
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1283
    return-void

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readRecord(Lsun/security/ssl/InputRecord;Z)V
    .locals 16
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .param p2, "needAppData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v13

    .line 918
    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .local v9, "state":I
    const/4 v12, 0x6

    if-eq v9, v12, :cond_15

    .line 919
    const/4 v12, 0x4

    if-eq v9, v12, :cond_15

    const/4 v12, 0x7

    if-eq v9, v12, :cond_15

    .line 926
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lsun/security/ssl/InputRecord;->setAppDataValid(Z)V

    .line 927
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Lsun/security/ssl/InputRecord;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Lsun/security/ssl/InputRecord;->decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 984
    :goto_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 985
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 1106
    sget-object v12, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v12, :cond_0

    const-string/jumbo v12, "ssl"

    invoke-static {v12}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1107
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1108
    const-string/jumbo v15, ", Received record type: "

    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1109
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v15

    .line 1107
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 912
    .end local v9    # "state":I
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 935
    .restart local v9    # "state":I
    :catch_0
    move-exception v5

    .line 936
    .local v5, "eof":Ljava/io/EOFException;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v12

    const/4 v14, 0x1

    if-gt v12, v14, :cond_2

    const/4 v7, 0x1

    .line 937
    .local v7, "handshaking":Z
    :goto_2
    sget-boolean v12, Lsun/security/ssl/SSLSocketImpl;->requireCloseNotify:Z

    if-nez v12, :cond_3

    move v8, v7

    .line 938
    :goto_3
    sget-object v12, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v12, :cond_1

    const-string/jumbo v12, "ssl"

    invoke-static {v12}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 939
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 940
    const-string/jumbo v15, ", received EOFException: "

    .line 939
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 941
    if-eqz v8, :cond_4

    const-string/jumbo v12, "error"

    .line 939
    :goto_4
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 943
    :cond_1
    if-eqz v8, :cond_6

    .line 945
    if-eqz v7, :cond_5

    .line 946
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 947
    const-string/jumbo v12, "Remote host closed connection during handshake"

    .line 946
    invoke-direct {v3, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 952
    .local v3, "e":Ljavax/net/ssl/SSLException;
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 953
    throw v3

    .line 936
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    .end local v7    # "handshaking":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "handshaking":Z
    goto :goto_2

    .line 937
    :cond_3
    const/4 v8, 0x1

    .local v8, "rethrow":Z
    goto :goto_3

    .line 941
    .end local v8    # "rethrow":Z
    :cond_4
    const-string/jumbo v12, "ignored"

    goto :goto_4

    .line 949
    :cond_5
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    .line 950
    const-string/jumbo v12, "Remote host closed connection incorrectly"

    .line 949
    invoke-direct {v3, v12}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    .restart local v3    # "e":Ljavax/net/ssl/SSLException;
    goto :goto_5

    .line 956
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 928
    .end local v5    # "eof":Ljava/io/EOFException;
    .end local v7    # "handshaking":Z
    :catch_1
    move-exception v4

    .line 930
    .local v4, "e":Ljavax/net/ssl/SSLProtocolException;
    const/16 v12, 0xa

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 934
    :goto_6
    :try_start_8
    throw v4

    .line 931
    :catch_2
    move-exception v11

    .local v11, "x":Ljava/io/IOException;
    goto :goto_6

    .line 970
    .end local v4    # "e":Ljavax/net/ssl/SSLProtocolException;
    .end local v11    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 971
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v12

    const/16 v14, 0x16

    if-ne v12, v14, :cond_7

    .line 972
    const/16 v1, 0x28

    .line 974
    .local v1, "alertType":B
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 973
    .end local v1    # "alertType":B
    :cond_7
    const/16 v1, 0x14

    .restart local v1    # "alertType":B
    goto :goto_7

    .line 998
    .end local v1    # "alertType":B
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :pswitch_0
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1001
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_b

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v12, v14}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    .line 1016
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V

    .line 1017
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v12, v12, Lsun/security/ssl/Handshaker;->invalidated:Z

    if-eqz v12, :cond_c

    .line 1020
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    .line 1022
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_9

    .line 1023
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1051
    :cond_9
    :goto_9
    if-nez p2, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v14, 0x2

    if-eq v12, v14, :cond_10

    :cond_a
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1005
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_8

    .line 984
    :catchall_1
    move-exception v12

    :try_start_c
    monitor-exit p0

    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1025
    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->isDone()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1028
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->isSecureRenegotiation()Z

    move-result v12

    .line 1027
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    .line 1029
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getClientVerifyData()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    .line 1030
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getServerVerifyData()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    .line 1032
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getSession()Lsun/security/ssl/SSLSessionImpl;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    .line 1033
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    .line 1034
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    .line 1035
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1041
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    if-eqz v12, :cond_9

    .line 1043
    new-instance v6, Ljavax/net/ssl/HandshakeCompletedEvent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 1045
    .local v6, "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    new-instance v10, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    .line 1046
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1045
    invoke-direct {v10, v12, v6}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;-><init>(Ljava/util/Set;Ljavax/net/ssl/HandshakeCompletedEvent;)V

    .line 1047
    .local v10, "t":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_9

    .line 1058
    .end local v6    # "event":Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v10    # "t":Ljava/lang/Thread;
    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x2

    if-eq v12, v14, :cond_d

    .line 1059
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_d

    .line 1060
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x5

    if-eq v12, v14, :cond_d

    .line 1061
    new-instance v12, Ljavax/net/ssl/SSLProtocolException;

    .line 1062
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Data received in non-data state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1063
    move-object/from16 v0, p0

    iget v15, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1062
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1061
    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1065
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    if-eqz v12, :cond_e

    .line 1066
    new-instance v12, Ljavax/net/ssl/SSLProtocolException;

    .line 1067
    const-string/jumbo v14, "Expecting finished message, received data"

    .line 1066
    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1069
    :cond_e
    if-nez p2, :cond_f

    .line 1070
    new-instance v12, Ljavax/net/ssl/SSLException;

    const-string/jumbo v14, "Discarding app data"

    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1073
    :cond_f
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lsun/security/ssl/InputRecord;->setAppDataValid(Z)V

    .line 1125
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x4

    if-ge v12, v14, :cond_11

    .line 1126
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lsun/security/ssl/SSLSocketImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_11
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v13

    .line 1129
    return-void

    .line 1077
    :pswitch_2
    :try_start_f
    invoke-direct/range {p0 .. p1}, Lsun/security/ssl/SSLSocketImpl;->recvAlert(Lsun/security/ssl/InputRecord;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 1081
    :pswitch_3
    :try_start_11
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_14

    .line 1082
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_14

    .line 1086
    :cond_12
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "illegal change cipher spec msg, state = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1087
    move-object/from16 v0, p0

    iget v14, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1086
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1085
    const/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    .line 1097
    :cond_13
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->changeReadCiphers()V

    .line 1099
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 1083
    :cond_14
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_12

    .line 1084
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_13

    goto :goto_a

    .line 1136
    :cond_15
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit v13

    .line 1137
    return-void

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recvAlert(Lsun/security/ssl/InputRecord;)V
    .locals 10
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1913
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v1, v3

    .line 1914
    .local v1, "level":B
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v0, v3

    .line 1915
    .local v0, "description":B
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1916
    const-string/jumbo v3, "Short alert message"

    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    .line 1919
    :cond_0
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "record"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1920
    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    .line 1919
    if-eqz v3, :cond_2

    .line 1921
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v4

    .line 1922
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1923
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", RECV "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ALERT:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1924
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1925
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "fatal, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1931
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1935
    :cond_2
    if-ne v1, v7, :cond_8

    .line 1936
    if-nez v0, :cond_7

    .line 1937
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v3, v7, :cond_6

    .line 1939
    const-string/jumbo v3, "Received close_notify during handshake"

    .line 1938
    invoke-virtual {p0, v9, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    .line 1912
    :cond_3
    :goto_1
    return-void

    .line 1926
    :cond_4
    if-ne v1, v7, :cond_5

    .line 1927
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "warning, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1921
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1929
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

    .line 1941
    :cond_6
    invoke-direct {p0, v8}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V

    goto :goto_1

    .line 1951
    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_3

    .line 1952
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3, v0}, Lsun/security/ssl/Handshaker;->handshakeAlert(B)V

    goto :goto_1

    .line 1956
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received fatal alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1957
    invoke-static {v0}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v4

    .line 1956
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v3, :cond_9

    .line 1959
    invoke-static {v0, v2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    .line 1961
    :cond_9
    invoke-virtual {p0, v9, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    goto :goto_1
.end method

.method private sendAlert(BB)V
    .locals 8
    .param p1, "level"    # B
    .param p2, "description"    # B

    .prologue
    const/4 v7, 0x1

    .line 1971
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 1972
    return-void

    .line 1977
    :cond_0
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v3, v7, :cond_1

    .line 1978
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3}, Lsun/security/ssl/Handshaker;->started()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1982
    :cond_1
    new-instance v1, Lsun/security/ssl/OutputRecord;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    .line 1983
    .local v1, "r":Lsun/security/ssl/OutputRecord;
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, v3}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 1985
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    .line 1986
    .local v2, "useDebug":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1987
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v4

    .line 1988
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1989
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", SEND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ALERT:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1990
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 1991
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "fatal, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1997
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "description = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1998
    invoke-static {p2}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v6

    .line 1997
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2002
    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2003
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2005
    :try_start_1
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1969
    :cond_3
    :goto_2
    return-void

    .line 1979
    .end local v1    # "r":Lsun/security/ssl/OutputRecord;
    .end local v2    # "useDebug":Z
    :cond_4
    return-void

    .line 1985
    .restart local v1    # "r":Lsun/security/ssl/OutputRecord;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1992
    .restart local v2    # "useDebug":Z
    :cond_6
    if-ne p1, v7, :cond_7

    .line 1993
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "warning, "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1987
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1995
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

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 2008
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2009
    const-string/jumbo v5, ", Exception sending alert: "

    .line 2008
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

    .line 653
    :try_start_0
    iput p1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 652
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startHandshake(Z)V
    .locals 3
    .param p1, "resumable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V

    .line 1337
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1339
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    .line 1334
    :goto_0
    return-void

    .line 1342
    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->kickstartHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method private static threadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    .locals 2
    .param p1, "r"    # Lsun/security/ssl/OutputRecord;
    .param p2, "holdRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1, v0}, Lsun/security/ssl/OutputRecord;->addMAC(Lsun/security/ssl/MAC;)V

    .line 813
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {p1, v0}, Lsun/security/ssl/OutputRecord;->encrypt(Lsun/security/ssl/CipherBox;)V

    .line 815
    if-eqz p2, :cond_0

    .line 819
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getTcpNoDelay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    const/4 p2, 0x0

    .line 830
    .end local p2    # "holdRecord":Z
    :cond_0
    :goto_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0, p2, v1}, Lsun/security/ssl/OutputRecord;->write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V

    .line 843
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 844
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLSocketImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)V

    .line 848
    :cond_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    if-eqz v0, :cond_2

    .line 849
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 810
    :cond_2
    return-void

    .line 824
    .restart local p2    # "holdRecord":Z
    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    monitor-enter p0

    .line 2426
    if-nez p1, :cond_0

    .line 2427
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 2430
    new-instance v0, Ljava/util/HashMap;

    .line 2431
    const/4 v1, 0x4

    .line 2430
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    .line 2433
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2425
    return-void
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;

    .prologue
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    return-void
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

    .line 2064
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-eq v2, v4, :cond_0

    .line 2065
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2066
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 2067
    const-string/jumbo v3, "State error, change cipher specs"

    .line 2066
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2072
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    .line 2075
    .local v1, "oldCipher":Lsun/security/ssl/CipherBox;
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    .line 2076
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 2087
    iput-boolean v4, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    .line 2063
    return-void

    .line 2077
    :catch_0
    move-exception v0

    .line 2079
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 2080
    const-string/jumbo v3, "Algorithm missing:  "

    .line 2079
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
.end method

.method checkEOF()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1456
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1473
    :pswitch_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_0

    .line 1474
    const/4 v1, 0x1

    return v1

    .line 1458
    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    :pswitch_2
    const/4 v1, 0x0

    return v1

    .line 1467
    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1476
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection has been shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1476
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1479
    throw v0

    .line 1456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method checkWrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1488
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1490
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Connection closed by remote host"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :cond_1
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", called close()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1538
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V

    .line 1539
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->setConnectionState(I)V

    .line 1534
    return-void
.end method

.method protected closeSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1496
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", called closeSocket()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1499
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_1

    .line 1500
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->close()V

    .line 1494
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-eq v0, p0, :cond_0

    .line 610
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 614
    new-instance v0, Ljava/net/SocketException;

    .line 615
    const-string/jumbo v1, "Cannot handle non-Inet socket addresses."

    .line 614
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_1
    invoke-super {p0, p1, p2}, Lsun/security/ssl/BaseSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 619
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 607
    return-void
.end method

.method doneConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 634
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    .line 635
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    .line 645
    :goto_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    .line 627
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    .line 638
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method declared-synchronized fatal(BLjava/lang/String;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1837
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1836
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
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v4, 0x4

    monitor-enter p0

    .line 1851
    :try_start_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v3, v3, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    if-eqz v3, :cond_0

    .line 1852
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v3, v3, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v3}, Lsun/security/ssl/InputRecord;->close()V

    .line 1854
    :cond_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 1855
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v3, :cond_1

    .line 1856
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    .line 1859
    :cond_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1860
    .local v0, "oldState":I
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ge v3, v4, :cond_2

    .line 1861
    const/4 v3, 0x4

    iput v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1869
    :cond_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v3, :cond_5

    .line 1873
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 1874
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1878
    :cond_3
    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    .line 1879
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1}, Lsun/security/ssl/SSLSocketImpl;->sendAlert(BB)V

    .line 1881
    :cond_4
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_7

    .line 1882
    nop

    nop

    .end local p3    # "cause":Ljava/lang/Throwable;
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    .line 1892
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->closeSocket()V

    .line 1894
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ge v3, v2, :cond_6

    .line 1895
    if-ne v0, v1, :cond_8

    :goto_1
    iput v1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 1900
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 1901
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    .line 1904
    :cond_6
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "oldState":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1885
    .restart local v0    # "oldState":I
    .restart local p3    # "cause":Ljava/lang/Throwable;
    :cond_7
    :try_start_1
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    .line 1884
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local p3    # "cause":Ljava/lang/Throwable;
    :cond_8
    move v1, v2

    .line 1896
    goto :goto_1
.end method

.method declared-synchronized fatal(BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "description"    # B
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1842
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1841
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAcc()Ljava/security/AccessControlContext;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method getAppInputStream()Lsun/security/ssl/AppInputStream;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    return-object v0
.end method

.method getAppOutputStream()Lsun/security/ssl/AppOutputStream;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    return-object v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 2215
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z
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

    .line 2371
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

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

    .line 2401
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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

    .line 2187
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getHost()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2101
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    .line 2104
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2123
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2131
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-nez v0, :cond_1

    .line 2132
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2135
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 2239
    :try_start_0
    iget-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B
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

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2144
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2152
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-nez v0, :cond_1

    .line 2153
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2156
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getRawHostname()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2108
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    .prologue
    monitor-enter p0

    .line 2457
    :try_start_0
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 2460
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 2461
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2463
    return-object v0

    .end local v0    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    .prologue
    .line 2168
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2171
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->startHandshake(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    :cond_0
    :goto_0
    monitor-enter p0

    .line 2181
    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2172
    :catch_0
    move-exception v0

    .line 2174
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2175
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2176
    const-string/jumbo v3, ", IOException in getSession():  "

    .line 2175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

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

    .line 2326
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z
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

    .line 2262
    :try_start_0
    iget-byte v1, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B
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

.method handleException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1751
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;Z)V

    .line 1750
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1446
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needToSplitPayload()Z
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 868
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v0

    .line 868
    if-eqz v0, :cond_0

    .line 869
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 868
    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 868
    return v0

    .line 870
    :cond_1
    :try_start_1
    sget-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    :catchall_0
    move-exception v0

    .line 872
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 871
    throw v0
.end method

.method readDataRecord(Lsun/security/ssl/InputRecord;)V
    .locals 2
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 881
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 882
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    .line 884
    :cond_0
    invoke-direct {p0, p1, v1}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V

    .line 880
    return-void
.end method

.method public declared-synchronized removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    monitor-enter p0

    .line 2442
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no listeners"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2445
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2448
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2449
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 2441
    return-void
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    monitor-enter p0

    .line 2203
    :try_start_0
    iput-boolean p1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    .line 2205
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2202
    return-void

    .line 2206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

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

    .line 2354
    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 2355
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2353
    return-void

    .line 2356
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

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

    .line 2394
    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 2395
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2393
    return-void

    .line 2396
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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

    .line 2191
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2190
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2113
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    .line 2114
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2112
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

    .line 2228
    if-eqz p1, :cond_1

    .line 2229
    const/4 v0, 0x2

    .line 2228
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    .line 2231
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    .line 2231
    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 2227
    return-void

    .line 2229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2234
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    iget-byte v1, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    invoke-virtual {v0, v1}, Lsun/security/ssl/ServerHandshaker;->setClientAuth(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Lsun/security/ssl/BaseSSLSocketImpl;->setPerformancePreferences(III)V

    return-void
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    monitor-enter p0

    .line 2470
    :try_start_0
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 2473
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 2474
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 2475
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->started()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2469
    return-void

    .line 2476
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setIdentificationProtocol(Ljava/lang/String;)V

    .line 2477
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 2409
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2411
    const-string/jumbo v2, ", setSoTimeout("

    .line 2410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2411
    const-string/jumbo v2, ") called"

    .line 2410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2413
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_1

    .line 2414
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->setSoTimeout(I)V

    .line 2408
    :goto_0
    return-void

    .line 2416
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 2272
    :try_start_0
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    packed-switch v2, :pswitch_data_0

    .line 2315
    :cond_0
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2316
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2317
    const-string/jumbo v2, ", setUseClientMode() invoked in state = "

    .line 2316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2318
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 2316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2321
    const-string/jumbo v1, "Cannot change mode after SSL traffic has started"

    .line 2320
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2280
    :pswitch_0
    :try_start_1
    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    if-eqz p1, :cond_3

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    .line 2281
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    .line 2280
    if-eqz v2, :cond_2

    .line 2282
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 2284
    :cond_2
    if-eqz p1, :cond_5

    :goto_2
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    .line 2271
    return-void

    :cond_3
    move v2, v1

    .line 2280
    goto :goto_0

    :cond_4
    move v2, v1

    .line 2282
    goto :goto_1

    :cond_5
    move v0, v1

    .line 2284
    goto :goto_2

    .line 2295
    :pswitch_1
    :try_start_2
    sget-boolean v2, Lsun/security/ssl/SSLSocketImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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

    .line 2296
    :cond_7
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2302
    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    if-eqz p1, :cond_9

    move v2, v0

    :goto_5
    if-eq v3, v2, :cond_8

    .line 2303
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    .line 2302
    if-eqz v2, :cond_8

    .line 2304
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_a

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 2306
    :cond_8
    if-eqz p1, :cond_b

    :goto_7
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    .line 2307
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    .line 2308
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_9
    move v2, v1

    .line 2302
    goto :goto_5

    :cond_a
    move v2, v1

    .line 2304
    goto :goto_6

    :cond_b
    move v0, v1

    .line 2306
    goto :goto_7

    .line 2272
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

    .line 2095
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 2096
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    iget-object v0, v0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2094
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

    .line 2251
    if-eqz p1, :cond_1

    .line 2252
    const/4 v0, 0x1

    .line 2251
    :goto_0
    :try_start_0
    iput-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    .line 2254
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    .line 2254
    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 2250
    return-void

    .line 2252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2257
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    check-cast v0, Lsun/security/ssl/ServerHandshaker;

    iget-byte v1, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    invoke-virtual {v0, v1}, Lsun/security/ssl/ServerHandshaker;->setClientAuth(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->startHandshake(Z)V

    .line 1321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2529
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2531
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2532
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2533
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2534
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2536
    iget-object v1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v1, p0, :cond_0

    .line 2537
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2541
    :goto_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2543
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2539
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method waitForClose(Z)V
    .locals 6
    .param p1, "rethrow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1687
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1688
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1689
    const-string/jumbo v5, ", waiting for close_notify or alert: state "

    .line 1688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1690
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v5

    .line 1688
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1696
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v2

    .local v2, "state":I
    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 1697
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 1699
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    if-nez v3, :cond_1

    .line 1700
    new-instance v3, Lsun/security/ssl/InputRecord;

    invoke-direct {v3}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1705
    :cond_1
    :try_start_1
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1706
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/net/SocketTimeoutException;
    goto :goto_0

    .line 1710
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1686
    .end local v2    # "state":I
    :cond_3
    return-void

    .line 1711
    :catch_1
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1713
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1714
    const-string/jumbo v5, ", Exception while waiting for close "

    .line 1713
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1716
    :cond_4
    if-eqz p1, :cond_3

    .line 1717
    throw v0
.end method

.method warning(B)V
    .locals 1
    .param p1, "description"    # B

    .prologue
    .line 1832
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->sendAlert(BB)V

    .line 1831
    return-void
.end method

.method writeRecord(Lsun/security/ssl/OutputRecord;)V
    .locals 1
    .param p1, "r"    # Lsun/security/ssl/OutputRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;Z)V

    .line 671
    return-void
.end method

.method writeRecord(Lsun/security/ssl/OutputRecord;Z)V
    .locals 7
    .param p1, "r"    # Lsun/security/ssl/OutputRecord;
    .param p2, "holdRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 687
    :goto_0
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 693
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 729
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v4, "State error, send app data"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 702
    :pswitch_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    goto :goto_0

    .line 711
    :pswitch_1
    const-string/jumbo v3, "error while writing to socket"

    .line 710
    invoke-virtual {p0, v5, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    goto :goto_0

    .line 719
    :pswitch_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    throw v3

    .line 722
    :cond_0
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 741
    :cond_1
    :pswitch_3
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 746
    invoke-virtual {p1, v5}, Lsun/security/ssl/OutputRecord;->isAlert(B)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSoLinger()I

    move-result v3

    if-ltz v3, :cond_7

    .line 749
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 751
    .local v1, "interrupted":Z
    :try_start_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSoLinger()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 753
    :try_start_1
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    :try_start_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    .end local v1    # "interrupted":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 796
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 682
    :cond_2
    :goto_2
    return-void

    .line 754
    .restart local v1    # "interrupted":Z
    :catchall_0
    move-exception v3

    .line 755
    :try_start_3
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 754
    throw v3

    .line 789
    :catch_0
    move-exception v0

    .line 791
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .local v1, "interrupted":Z
    goto :goto_1

    .line 758
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    .local v1, "interrupted":Z
    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLException;

    .line 759
    const-string/jumbo v3, "SO_LINGER timeout, close_notify message cannot be sent."

    .line 758
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 766
    .local v2, "ssle":Ljavax/net/ssl/SSLException;
    iget-object v3, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-eq v3, p0, :cond_4

    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_6

    .line 771
    :cond_4
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 772
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 773
    const-string/jumbo v5, ", received Exception: "

    .line 772
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    :cond_5
    :goto_3
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    goto :goto_1

    .line 770
    :cond_6
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 799
    .end local v1    # "interrupted":Z
    .end local v2    # "ssle":Ljavax/net/ssl/SSLException;
    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 801
    :try_start_4
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 803
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .line 802
    :catchall_1
    move-exception v3

    .line 803
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 802
    throw v3

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
