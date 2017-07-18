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

    const-class v0, Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/SSLSocketImpl;->-assertionsDisabled:Z

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v2, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, v4}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->bind(Ljava/net/SocketAddress;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, v4}, Lsun/security/ssl/SSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>(Ljava/net/Socket;)V

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Underlying socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    iput-boolean p5, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;ZLsun/security/ssl/CipherSuiteList;BZLsun/security/ssl/ProtocolList;Ljava/lang/String;Ljava/security/AlgorithmConstraints;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lsun/security/ssl/BaseSSLSocketImpl;-><init>()V

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    iput-byte p4, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    iput-boolean p5, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    iput-object p7, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object p8, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->init(Lsun/security/ssl/SSLContextImpl;Z)V

    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object p6, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    return-void
.end method

.method private changeReadCiphers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "State error, change cipher specs"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newReadMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;
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

.method private checkSequenceNumber(Lsun/security/ssl/MAC;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

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

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    :cond_3
    const/16 v0, 0x16

    if-eq p2, v0, :cond_5

    invoke-virtual {p1}, Lsun/security/ssl/MAC;->seqNumIsHuge()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

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

    const-string/jumbo v2, "to avoid sequence number overflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->startHandshake()V

    :cond_5
    return-void
.end method

.method private closeInternal(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v7, 0x6

    const/4 v6, 0x7

    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ssl"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

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

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-eq v3, v7, :cond_1

    if-ne v3, v11, :cond_6

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-enter p0

    :try_start_3
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_a

    :goto_0
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    :cond_2
    return-void

    :pswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    :pswitch_2
    monitor-enter p0

    :try_start_5
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_16

    :goto_2
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    :cond_4
    if-eqz v0, :cond_1b

    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_17

    nop

    nop

    throw v0

    :pswitch_3
    :try_start_6
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->closeSocket()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-enter p0

    :try_start_7
    iget v8, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v8, v6, :cond_18

    :goto_3
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    monitor-exit p0

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    :cond_5
    if-eqz v0, :cond_1a

    instance-of v6, v0, Ljava/lang/Error;

    if-eqz v6, :cond_19

    nop

    nop

    throw v0

    :cond_6
    if-eq v3, v6, :cond_1

    if-eq v3, v10, :cond_7

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {p0, v5}, Lsun/security/ssl/SSLSocketImpl;->warning(B)V

    const/4 v5, 0x5

    iput v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_7
    :goto_4
    :try_start_9
    monitor-exit p0

    if-ne v3, v10, :cond_15

    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_8

    const-string/jumbo v5, "ssl"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", close invoked again; state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    if-nez p1, :cond_e

    monitor-enter p0

    :try_start_a
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_b

    :goto_5
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    :cond_9
    if-eqz v0, :cond_d

    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_c

    nop

    nop

    throw v0

    :cond_a
    move v6, v7

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_0
    move-exception v4

    const/4 v5, 0x4

    :try_start_b
    iput v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    move-object v0, v4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v5

    :try_start_c
    monitor-exit p0

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_b
    move v6, v7

    goto :goto_5

    :catchall_3
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_c
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_d

    nop

    nop

    throw v0

    :cond_d
    return-void

    :cond_e
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_6
    :try_start_e
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-ge v5, v7, :cond_f

    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_6

    :cond_f
    :try_start_10
    monitor-exit p0

    sget-object v5, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_10

    const-string/jumbo v5, "ssl"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", after primary close; state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_12

    :goto_7
    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    monitor-exit p0

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->disposeCiphers()V

    :cond_11
    if-eqz v0, :cond_14

    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_13

    nop

    nop

    throw v0

    :catchall_4
    move-exception v5

    :try_start_12
    monitor-exit p0

    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_12
    move v6, v7

    goto :goto_7

    :catchall_5
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_13
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_14

    nop

    nop

    throw v0

    :cond_14
    return-void

    :cond_15
    if-nez v1, :cond_3

    const/4 v1, 0x1

    :try_start_13
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLSocketImpl;->closeSocket(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    :cond_16
    move v6, v7

    goto/16 :goto_2

    :catchall_6
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_17
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_1b

    nop

    nop

    throw v0

    :cond_18
    move v6, v7

    goto/16 :goto_3

    :catchall_7
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_19
    instance-of v6, v0, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_1a

    nop

    nop

    throw v0

    :cond_1a
    throw v5

    :cond_1b
    return-void

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_2

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->waitForClose(Z)V

    goto :goto_0
.end method

.method private disposeCiphers()V
    .locals 2

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private declared-synchronized getConnectionState()I
    .locals 1

    monitor-enter p0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", handling exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    instance-of v3, p1, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    nop

    nop

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_3

    instance-of v3, p1, Ljava/io/IOException;

    if-eqz v3, :cond_2

    nop

    nop

    throw p1

    :cond_2
    const-string/jumbo v3, "Unexpected exception"

    const/16 v4, 0x50

    invoke-static {v4, p1, v3}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3

    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_4

    instance-of v3, p1, Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    :try_start_2
    invoke-virtual {p0, v3, p1}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    nop

    nop

    throw p1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    instance-of v3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v3, :cond_5

    const/16 v0, 0x28

    :goto_1
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    const/16 v0, 0xa

    goto :goto_1

    :cond_6
    const/16 v0, 0x50

    goto :goto_1
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    iput-boolean p2, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    iput v1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->readMAC:Lsun/security/ssl/MAC;

    sget-object v0, Lsun/security/ssl/CipherBox;->NULL:Lsun/security/ssl/CipherBox;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    sget-object v0, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    iput-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->acc:Ljava/security/AccessControlContext;

    new-instance v0, Lsun/security/ssl/AppInputStream;

    invoke-direct {v0, p0}, Lsun/security/ssl/AppInputStream;-><init>(Lsun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    new-instance v0, Lsun/security/ssl/AppOutputStream;

    invoke-direct {v0, p0}, Lsun/security/ssl/AppOutputStream;-><init>(Lsun/security/ssl/SSLSocketImpl;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    return-void
.end method

.method private initHandshaker()V
    .locals 10

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-nez v0, :cond_0

    iput v6, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    :goto_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    if-eqz v0, :cond_2

    new-instance v0, Lsun/security/ssl/ServerHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-byte v4, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    iget-object v5, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v7, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v7, v6, :cond_1

    :goto_1
    iget-boolean v7, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    iget-object v8, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    iget-object v9, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/ServerHandshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    :goto_2
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setEnableSessionCreation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lsun/security/ssl/ClientHandshaker;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_3
    iget-boolean v6, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    iget-object v7, p0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    iget-object v8, p0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/ClientHandshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    if-nez v0, :cond_1

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Warning: Using insecure renegotiation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    :pswitch_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    :goto_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ClientHandshaker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Insecure renegotiation is not allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_2
    monitor-exit p0

    return-void

    :pswitch_3
    :try_start_3
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "handshaking attempted on unconnected socket"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v0}, Lsun/security/ssl/Handshaker;->kickstart()V

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v0, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

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

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->kickstartHandshake()V

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    if-nez v0, :cond_0

    new-instance v0, Lsun/security/ssl/InputRecord;

    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v2, v2, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2}, Lsun/security/ssl/InputRecord;->getHandshakeHash()Lsun/security/ssl/HandshakeHash;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v2, v2, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v2}, Lsun/security/ssl/InputRecord;->getHelloVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->enableFormatChecks()V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readRecord(Lsun/security/ssl/InputRecord;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/ssl/SSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v13

    :goto_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    const/4 v12, 0x6

    if-eq v9, v12, :cond_15

    const/4 v12, 0x4

    if-eq v9, v12, :cond_15

    const/4 v12, 0x7

    if-eq v9, v12, :cond_15

    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lsun/security/ssl/InputRecord;->setAppDataValid(Z)V

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

    :goto_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v12

    packed-switch v12, :pswitch_data_0

    sget-object v12, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v12, :cond_0

    const-string/jumbo v12, "ssl"

    invoke-static {v12}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", Received record type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v15

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

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :catch_0
    move-exception v5

    :try_start_6
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v12

    const/4 v14, 0x1

    if-gt v12, v14, :cond_2

    const/4 v7, 0x1

    :goto_2
    sget-boolean v12, Lsun/security/ssl/SSLSocketImpl;->requireCloseNotify:Z

    if-nez v12, :cond_3

    move v8, v7

    :goto_3
    sget-object v12, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v12, :cond_1

    const-string/jumbo v12, "ssl"

    invoke-static {v12}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, ", received EOFException: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v8, :cond_4

    const-string/jumbo v12, "error"

    :goto_4
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz v8, :cond_6

    if-eqz v7, :cond_5

    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "Remote host closed connection during handshake"

    invoke-direct {v3, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v12, "ignored"

    goto :goto_4

    :cond_5
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v12, "Remote host closed connection incorrectly"

    invoke-direct {v3, v12}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const/16 v12, 0xa

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    throw v4

    :catch_2
    move-exception v11

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v12

    const/16 v14, 0x16

    if-ne v12, v14, :cond_7

    const/16 v1, 0x28

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x14

    goto :goto_7

    :pswitch_0
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v12, v14}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V

    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lsun/security/ssl/Handshaker;->process_record(Lsun/security/ssl/InputRecord;Z)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-boolean v12, v12, Lsun/security/ssl/Handshaker;->invalidated:Z

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_9

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

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

    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lsun/security/ssl/Handshaker;->activate(Lsun/security/ssl/ProtocolVersion;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v12

    :try_start_c
    monitor-exit p0

    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->isDone()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->isSecureRenegotiation()Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->secureRenegotiation:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getClientVerifyData()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->clientVerifyData:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getServerVerifyData()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->serverVerifyData:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v12}, Lsun/security/ssl/Handshaker;->getSession()Lsun/security/ssl/SSLSessionImpl;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    if-eqz v12, :cond_9

    new-instance v6, Ljavax/net/ssl/HandshakeCompletedEvent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    new-instance v10, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v10, v12, v6}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;-><init>(Ljava/util/Set;Ljavax/net/ssl/HandshakeCompletedEvent;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_9

    :pswitch_1
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x2

    if-eq v12, v14, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x5

    if-eq v12, v14, :cond_d

    new-instance v12, Ljavax/net/ssl/SSLProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Data received in non-data state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lsun/security/ssl/SSLSocketImpl;->expectingFinished:Z

    if-eqz v12, :cond_e

    new-instance v12, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v14, "Expecting finished message, received data"

    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_e
    if-nez p2, :cond_f

    new-instance v12, Ljavax/net/ssl/SSLException;

    const-string/jumbo v14, "Discarding app data"

    invoke-direct {v12, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_f
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lsun/security/ssl/InputRecord;->setAppDataValid(Z)V

    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x4

    if-ge v12, v14, :cond_11

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

    return-void

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

    :pswitch_3
    :try_start_11
    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_14

    move-object/from16 v0, p0

    iget v12, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_14

    :cond_12
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "illegal change cipher spec msg, state = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lsun/security/ssl/SSLSocketImpl;->changeReadCiphers()V

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

    :cond_14
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_13

    goto :goto_a

    :cond_15
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/InputRecord;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit v13

    return-void

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v1, v3

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v0, v3

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v3, "Short alert message"

    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    :cond_0
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

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

    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v3, v7, :cond_6

    const-string/jumbo v3, "Received close_notify during handshake"

    invoke-virtual {p0, v9, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

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
    invoke-direct {p0, v8}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v3, :cond_9

    invoke-static {v0, v2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    :cond_9
    invoke-virtual {p0, v9, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    goto :goto_1
.end method

.method private sendAlert(BB)V
    .locals 8

    const/4 v7, 0x1

    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v3}, Lsun/security/ssl/Handshaker;->started()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    new-instance v1, Lsun/security/ssl/OutputRecord;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, v3}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

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

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

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
    invoke-virtual {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V
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

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

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
    iput p1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startHandshake(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V

    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->kickstartHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method

.method private static threadName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1, v0}, Lsun/security/ssl/OutputRecord;->addMAC(Lsun/security/ssl/MAC;)V

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {p1, v0}, Lsun/security/ssl/OutputRecord;->encrypt(Lsun/security/ssl/CipherBox;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getTcpNoDelay()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0, p2, v1}, Lsun/security/ssl/OutputRecord;->write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v1

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SSLSocketImpl;->checkSequenceNumber(Lsun/security/ssl/MAC;B)V

    :cond_1
    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->heldRecordBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

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

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .locals 0

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

    const/4 v4, 0x1

    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "State error, change cipher specs"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteCipher()Lsun/security/ssl/CipherBox;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->newWriteMAC()Lsun/security/ssl/MAC;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->writeMAC:Lsun/security/ssl/MAC;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    iput-boolean v4, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z

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

.method checkEOF()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    const/4 v1, 0x0

    return v1

    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

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

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

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

    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Connection closed by remote host"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

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

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->closeInternal(Z)V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->setConnectionState(I)V

    return-void
.end method

.method protected closeSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_1

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->close()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Cannot handle non-Inet socket addresses."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2}, Lsun/security/ssl/BaseSSLSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    return-void
.end method

.method doneConnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    :goto_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V

    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sockOutput:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method declared-synchronized fatal(BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
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
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v4, 0x4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v3, v3, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    iget-object v3, v3, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v3}, Lsun/security/ssl/InputRecord;->close()V

    :cond_0
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    :cond_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ge v3, v4, :cond_2

    const/4 v3, 0x4

    iput v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    :cond_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->sockInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    :cond_3
    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    invoke-direct {p0, v3, p1}, Lsun/security/ssl/SSLSocketImpl;->sendAlert(BB)V

    :cond_4
    instance-of v3, p3, Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_7

    nop

    nop

    iput-object p3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->closeSocket()V

    iget v3, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-ge v3, v2, :cond_6

    if-ne v0, v1, :cond_8

    :goto_1
    iput v1, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->readCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v1}, Lsun/security/ssl/CipherBox;->dispose()V

    :cond_6
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_7
    :try_start_1
    invoke-static {p1, p3, p2}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method declared-synchronized fatal(BLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V
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

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method getAppInputStream()Lsun/security/ssl/AppInputStream;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;

    return-object v0
.end method

.method getAppOutputStream()Lsun/security/ssl/AppOutputStream;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    return-object v0
.end method

.method public declared-synchronized getEnableSessionCreation()Z
    .locals 1

    monitor-enter p0

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

    monitor-enter p0

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

    monitor-enter p0

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

    monitor-enter p0

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

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

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    :try_start_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->input:Lsun/security/ssl/AppInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNeedClientAuth()Z
    .locals 2

    monitor-enter p0

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

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    :try_start_1
    iget v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getRawHostname()Ljava/lang/String;
    .locals 1

    monitor-enter p0

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

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

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

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLSocketImpl;->startHandshake(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", IOException in getSession():  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

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

    const/4 v0, 0x1

    monitor-enter p0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;Z)V

    return-void
.end method

.method public isClosed()Z
    .locals 2

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

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->writeCipher:Lsun/security/ssl/CipherBox;

    invoke-virtual {v0}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->isFirstAppOutputRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :try_start_1
    sget-boolean v0, Lsun/security/ssl/Record;->enableCBCProtection:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method readDataRecord(Lsun/security/ssl/InputRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    :cond_0
    invoke-direct {p0, p1, v1}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V

    return-void
.end method

.method public declared-synchronized removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    if-nez v0, :cond_0

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

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeListeners:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setEnableSessionCreation(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lsun/security/ssl/SSLSocketImpl;->enableSessionCreation:Z

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

    return-void

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

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

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

    return-void

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

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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

    return-void

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

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->handshakeSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->host:Ljava/lang/String;

    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->rawHostname:Ljava/lang/String;
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
    iput-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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

    invoke-super {p0, p1, p2, p3}, Lsun/security/ssl/BaseSSLSocketImpl;->setPerformancePreferences(III)V

    return-void
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

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

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setIdentificationProtocol(Ljava/lang/String;)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", setSoTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_1

    invoke-super {p0, p1}, Lsun/security/ssl/BaseSSLSocketImpl;->setSoTimeout(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    sget-object v0, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", setUseClientMode() invoked in state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

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
    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    if-eqz p1, :cond_3

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    :cond_2
    if-eqz p1, :cond_5

    :goto_2
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z
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

    :cond_7
    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    invoke-virtual {v2}, Lsun/security/ssl/Handshaker;->activated()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    if-eqz p1, :cond_9

    move v2, v0

    :goto_5
    if-eq v3, v2, :cond_8

    iget-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_a

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/SSLSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    :cond_8
    if-eqz p1, :cond_b

    :goto_7
    iput-boolean v0, p0, Lsun/security/ssl/SSLSocketImpl;->roleIsServer:Z

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/SSLSocketImpl;->connectionState:I

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->initHandshaker()V
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
    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->output:Lsun/security/ssl/AppOutputStream;

    iget-object v0, v0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

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
    iput-byte v0, p0, Lsun/security/ssl/SSLSocketImpl;->doClientAuth:B

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

    instance-of v0, v0, Lsun/security/ssl/ServerHandshaker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl;->handshaker:Lsun/security/ssl/Handshaker;

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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLSocketImpl;->startHandshake(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v1, p0, :cond_0

    invoke-super {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method waitForClose(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", waiting for close_notify or alert: state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    if-nez v3, :cond_1

    new-instance v3, Lsun/security/ssl/InputRecord;

    invoke-direct {v3}, Lsun/security/ssl/InputRecord;-><init>()V

    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lsun/security/ssl/SSLSocketImpl;->readRecord(Lsun/security/ssl/InputRecord;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->inrec:Lsun/security/ssl/InputRecord;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-void

    :catch_1
    move-exception v0

    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Exception while waiting for close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_3

    throw v0
.end method

.method warning(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/security/ssl/SSLSocketImpl;->sendAlert(BB)V

    return-void
.end method

.method writeRecord(Lsun/security/ssl/OutputRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;Z)V

    return-void
.end method

.method writeRecord(Lsun/security/ssl/OutputRecord;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->getConnectionState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v4, "State error, send app data"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-direct {p0}, Lsun/security/ssl/SSLSocketImpl;->performInitialHandshake()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "error while writing to socket"

    invoke-virtual {p0, v5, v3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->closeReason:Ljavax/net/ssl/SSLException;

    throw v3

    :cond_0
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :pswitch_3
    invoke-virtual {p1}, Lsun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v5}, Lsun/security/ssl/OutputRecord;->isAlert(B)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lsun/security/ssl/BaseSSLSocketImpl;->getSoLinger()I

    move-result v3

    if-ltz v3, :cond_7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

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

    :try_start_1
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "SO_LINGER timeout, close_notify message cannot be sent."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-eq v3, p0, :cond_4

    iget-boolean v3, p0, Lsun/security/ssl/SSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_6

    :cond_4
    sget-object v3, Lsun/security/ssl/SSLSocketImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ssl"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lsun/security/ssl/SSLSocketImpl;->threadName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", received Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_3
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->sess:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    goto :goto_1

    :cond_6
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSocketImpl;->writeRecordInternal(Lsun/security/ssl/OutputRecord;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v3, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

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
