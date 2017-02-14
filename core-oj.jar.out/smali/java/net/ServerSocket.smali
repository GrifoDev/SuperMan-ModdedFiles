.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private created:Z

.field private impl:Ljava/net/SocketImpl;

.field private oldImpl:Z


# direct methods
.method static synthetic -get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;
    .locals 1

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Ljava/net/ServerSocket;->created:Z

    iput-boolean v3, p0, Ljava/net/ServerSocket;->bound:Z

    iput-boolean v3, p0, Ljava/net/ServerSocket;->closed:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    iput-boolean v3, p0, Ljava/net/ServerSocket;->oldImpl:Z

    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    if-ltz p1, :cond_0

    const v2, 0xffff

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Port value out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    if-ge p2, v2, :cond_2

    const/16 p2, 0x32

    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v2, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    throw v1
.end method

.method constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {p1, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    return-void
.end method

.method private checkOldImpl()V
    .locals 2

    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket$1;

    invoke-direct {v1, p0}, Ljava/net/ServerSocket$1;-><init>(Ljava/net/ServerSocket;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    goto :goto_0
.end method

.method private setImpl()V
    .locals 1

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOldImpl()V

    :goto_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    goto :goto_0
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v2, Ljava/net/ServerSocket;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    :cond_1
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not bound yet"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/net/Socket;

    const/4 v1, 0x0

    check-cast v1, Ljava/net/SocketImpl;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-boolean v4, p0, Ljava/net/ServerSocket;->oldImpl:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Already bound"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Unresolved address"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    if-ge p2, v5, :cond_5

    const/16 p2, 0x32

    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    :cond_6
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/ServerSocket;->bound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    throw v0

    :catch_1
    move-exception v1

    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method createImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->createImpl()V

    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4

    :catch_1
    move-exception v1

    return-object v6
.end method

.method public getLocalPort()I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    return v1
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/net/Socket;->setImpl()V

    :goto_0
    iget-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v4, 0x0

    iput-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    new-instance v4, Ljava/net/InetAddress;

    invoke-direct {v4}, Ljava/net/InetAddress;-><init>()V

    iput-object v4, v3, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v4, v3, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/SocketImpl;->getPort()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {p1}, Ljava/net/Socket;->postAccept()V

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    :cond_2
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    throw v0

    :catch_1
    move-exception v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    :cond_3
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    throw v1
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setBound()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    return-void
.end method

.method setCreated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    if-gtz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative receive size"

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
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

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
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ServerSocket[unbound]"

    return-object v1

    :cond_0
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServerSocket[addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method
