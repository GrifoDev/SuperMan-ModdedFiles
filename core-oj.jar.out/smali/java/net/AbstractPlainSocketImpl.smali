.class abstract Ljava/net/AbstractPlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "AbstractPlainSocketImpl.java"


# static fields
.field public static final SHUT_RD:I = 0x0

.field public static final SHUT_WR:I = 0x1


# instance fields
.field private CONNECTION_NOT_RESET:I

.field private CONNECTION_RESET:I

.field private CONNECTION_RESET_PENDING:I

.field protected closePending:Z

.field protected final fdLock:Ljava/lang/Object;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final resetLock:Ljava/lang/Object;

.field private resetState:I

.field private shut_rd:Z

.field private shut_wr:Z

.field private socketInputStream:Ljava/net/SocketInputStream;

.field protected stream:Z

.field timeout:I

.field private trafficClass:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    const/4 v0, 0x1

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    const/4 v0, 0x2

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    return-void
.end method

.method private connectToAddress(Ljava/net/InetAddress;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    goto :goto_0
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketAccept(Ljava/net/SocketImpl;)V

    return-void
.end method

.method acquireFD()Ljava/io/FileDescriptor;
    .locals 2

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Stream closed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    return v4

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_2
    .catch Lsun/net/ConnectionResetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_4
    .catch Lsun/net/ConnectionResetException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected declared-synchronized bind(Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->socketBind(Ljava/net/InetAddress;I)V

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->setBound()V

    :cond_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->setBound()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    if-nez v0, :cond_0

    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    :cond_0
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {p0, v0, p2, v3}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    throw v3

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    :try_start_0
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {p0, p1, p2, v1}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    throw v0
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    throw v4

    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iput v4, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v4, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget v5, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    invoke-direct {p0, v4, v5, p2}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-nez v2, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected declared-synchronized create(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    if-nez p1, :cond_3

    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->setCreated()V

    :cond_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->setCreated()V

    :cond_1
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized doConnect(Ljava/net/InetAddress;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->socketConnect(Ljava/net/InetAddress;II)V

    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket closed"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_7
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    :try_start_9
    monitor-exit v2

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->setBound()V

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->setConnected()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3
    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    return-void
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/SocketInputStream;

    invoke-direct {v0, p0}, Ljava/net/SocketInputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    :cond_2
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket Closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v4, 0x1006

    if-ne p1, v4, :cond_1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    return-object v5

    :sswitch_0
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_2
    move v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_3
    move v2, v3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    if-ne v1, v6, :cond_4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v2

    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_5

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_5
    move v2, v3

    goto :goto_3

    :sswitch_4
    new-instance v0, Ljava/net/InetAddressContainer;

    invoke-direct {v0}, Ljava/net/InetAddressContainer;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Ljava/net/InetAddressContainer;->addr:Ljava/net/InetAddress;

    return-object v2

    :sswitch_5
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :sswitch_6
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    if-ne v1, v6, :cond_6

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->trafficClass:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :cond_6
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :sswitch_7
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    move-result v1

    if-eq v1, v6, :cond_7

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_7
    move v2, v3

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_3
        0x8 -> :sswitch_7
        0xf -> :sswitch_4
        0x80 -> :sswitch_2
        0x1001 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_1
    .end sparse-switch
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/SocketOutputStream;

    invoke-direct {v0, p0}, Ljava/net/SocketOutputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    return v0
.end method

.method public isClosedOrPending()Z
    .locals 2

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionReset()Z
    .locals 3

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionResetPending()Z
    .locals 3

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected declared-synchronized listen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketListen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    :cond_0
    invoke-super {p0}, Ljava/net/SocketImpl;->reset()V

    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketSendUrgentData(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public setConnectionReset()V
    .locals 2

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setConnectionResetPending()V
    .locals 3

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method setInputStream(Ljava/net/SocketInputStream;)V
    .locals 0

    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    return-void
.end method

.method setLocalPort(I)V
    .locals 0

    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->localport:I

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket Closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognized TCP option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    if-eqz p2, :cond_3

    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Ljava/net/AbstractPlainSocketImpl;->socketSetOption(IZLjava/lang/Object;)V

    return-void

    :cond_3
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Bad parameter for option"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    if-eqz p2, :cond_4

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Bad parameter for SO_TIMEOUT"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    goto :goto_0

    :sswitch_2
    if-eqz p2, :cond_6

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ljava/net/AbstractPlainSocketImpl;->trafficClass:I

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad argument for IP_TOS"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_3
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Cannot re-bind socket"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_4
    if-eqz p2, :cond_7

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad parameter for TCP_NODELAY"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_5
    if-eqz p2, :cond_8

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_8
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad parameter for SO_SNDBUF or SO_RCVBUF"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_6
    if-eqz p2, :cond_9

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad parameter for SO_KEEPALIVE"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_7
    if-eqz p2, :cond_a

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad parameter for SO_OOBINLINE"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_8
    if-eqz p2, :cond_b

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "bad parameter for SO_REUSEADDR"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_8
        0x8 -> :sswitch_6
        0xf -> :sswitch_3
        0x80 -> :sswitch_0
        0x1001 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_7
        0x1006 -> :sswitch_1
    .end sparse-switch
.end method

.method setPort(I)V
    .locals 0

    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    return-void
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    invoke-virtual {v0, v1}, Ljava/net/SocketInputStream;->setEOF(Z)V

    :cond_0
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    :cond_1
    return-void
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    :cond_0
    return-void
.end method

.method abstract socketAccept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketBind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected socketClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose0()V

    return-void
.end method

.method abstract socketClose0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketConnect(Ljava/net/InetAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketCreate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketGetOption(ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract socketListen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketSendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketSetOption(IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract socketShutdown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected supportsUrgentData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
