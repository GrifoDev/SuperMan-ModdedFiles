.class Lsun/nio/ch/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_INUSE:I = 0x0

.field private static final ST_KILLED:I = 0x1

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private fdVal:I

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final lock:Ljava/lang/Object;

.field socket:Ljava/net/ServerSocket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private volatile thread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    .line 397
    invoke-static {}, Lsun/nio/ch/ServerSocketChannelImpl;->initIDs()V

    .line 398
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 41
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lsun/nio/ch/Net;->serverSocket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 89
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "bound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 99
    iput-object p2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 100
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 102
    if-eqz p3, :cond_0

    .line 103
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 96
    :cond_0
    return-void
.end method

.method private native accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 224
    iget-object v10, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 226
    new-instance v7, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v7}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v7

    if-nez v7, :cond_1

    .line 228
    new-instance v7, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v7}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v7

    .line 229
    :cond_1
    const/4 v4, 0x0

    .line 231
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    .line 232
    .local v2, "n":I
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 233
    .local v3, "newfd":Ljava/io/FileDescriptor;
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .local v1, "isaa":[Ljava/net/InetSocketAddress;
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->begin()V

    .line 237
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-nez v7, :cond_3

    .line 247
    const-wide/16 v8, 0x0

    :try_start_3
    iput-wide v8, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 248
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 249
    sget-boolean v7, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v10

    .line 238
    return-object v11

    .line 239
    :cond_3
    :try_start_4
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v12

    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 241
    :cond_4
    iget-object v7, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v7, v3, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v2

    .line 242
    const/4 v7, -0x3

    if-ne v2, v7, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-nez v7, :cond_4

    .line 247
    :cond_5
    const-wide/16 v12, 0x0

    :try_start_5
    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 248
    if-lez v2, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p0, v9}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 249
    sget-boolean v7, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_9

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 246
    :catchall_1
    move-exception v7

    .line 247
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 248
    if-lez v2, :cond_7

    :goto_0
    invoke-virtual {p0, v8}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 249
    sget-boolean v8, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v8, :cond_8

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_7
    move v8, v9

    .line 248
    goto :goto_0

    .line 246
    :cond_8
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 252
    :cond_9
    if-ge v2, v8, :cond_a

    monitor-exit v10

    .line 253
    return-object v11

    .line 255
    :cond_a
    const/4 v7, 0x1

    :try_start_6
    invoke-static {v3, v7}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 256
    const/4 v7, 0x0

    aget-object v0, v1, v7

    .line 257
    .local v0, "isa":Ljava/net/InetSocketAddress;
    new-instance v4, Lsun/nio/ch/SocketChannelImpl;

    .end local v4    # "sc":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v7

    invoke-direct {v4, v7, v3, v0}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    .line 258
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    .line 259
    .local v5, "sm":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_b

    .line 261
    :try_start_7
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 261
    invoke-virtual {v5, v7, v8}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    monitor-exit v10

    .line 268
    return-object v4

    .line 263
    :catch_0
    move-exception v6

    .line 264
    .local v6, "x":Ljava/lang/SecurityException;
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V

    .line 265
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 6
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local p2    # "backlog":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 206
    .restart local p2    # "backlog":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v2

    .line 208
    :cond_1
    if-nez p1, :cond_4

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 210
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 211
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 213
    :cond_2
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 214
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 215
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v4, 0x1

    if-ge p2, v4, :cond_3

    const/16 p2, 0x32

    .end local p2    # "backlog":I
    :cond_3
    invoke-static {v2, p2}, Lsun/nio/ch/Net;->listen(Ljava/io/FileDescriptor;I)V

    .line 216
    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 220
    return-object p0

    .line 209
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p2    # "backlog":I
    :cond_4
    :try_start_4
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 216
    .end local p2    # "backlog":I
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 121
    :cond_1
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    .line 163
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 166
    iget-boolean v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 169
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    :try_start_0
    iget v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 280
    sget-object v2, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 281
    :cond_0
    iget-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 282
    .local v0, "th":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 283
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_2

    .line 285
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 277
    return-void

    .line 278
    .end local v0    # "th":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 273
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public kill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 290
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    iget v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_0

    monitor-exit v2

    .line 292
    return-void

    .line 293
    :cond_0
    :try_start_1
    iget v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 294
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 295
    return-void

    .line 297
    :cond_1
    :try_start_2
    sget-boolean v3, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    .line 297
    goto :goto_0

    .line 298
    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 299
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 289
    return-void
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/ServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 136
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    .line 137
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    .line 145
    return-object p0

    .line 143
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public socket()Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 109
    invoke-static {p0}, Lsun/nio/ch/ServerSocketAdaptor;->create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    .line 110
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 364
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    const-string/jumbo v2, "closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :goto_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 370
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 372
    .local v0, "addr":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_1

    .line 373
    const-string/jumbo v2, "unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 375
    :cond_1
    :try_start_1
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 370
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 349
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 350
    const/4 v0, 0x1

    .line 352
    :cond_0
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 345
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 335
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 6
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 308
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 309
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 310
    .local v2, "oldOps":I
    move v1, p2

    .line 312
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    .line 316
    return v4

    .line 319
    :cond_0
    and-int/lit8 v5, p1, 0x18

    if-eqz v5, :cond_2

    .line 321
    move v1, v0

    .line 322
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 323
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 326
    :cond_2
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    .line 327
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 328
    or-int/lit8 v1, p2, 0x10

    .line 330
    :cond_3
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 331
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_4

    :goto_1
    return v3

    :cond_4
    move v3, v4

    goto :goto_1
.end method
