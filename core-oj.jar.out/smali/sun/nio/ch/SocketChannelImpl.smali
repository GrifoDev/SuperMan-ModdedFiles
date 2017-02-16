.class Lsun/nio/ch/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x2

.field private static final ST_KILLED:I = 0x4

.field private static final ST_KILLPENDING:I = 0x3

.field private static final ST_PENDING:I = 0x1

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private isInputOpen:Z

.field private isOutputOpen:Z

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private readyToConnect:Z

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private socket:Ljava/net/Socket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    .line 1039
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 45
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 61
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 62
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 93
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 94
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 95
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 107
    invoke-static {v1}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 108
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 109
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 105
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 61
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 62
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 93
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 94
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 132
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 133
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 135
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 136
    iput-object p3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 129
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .locals 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "bound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 61
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 62
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 93
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 94
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 95
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 118
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 119
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 120
    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 121
    if-eqz p3, :cond_0

    .line 122
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 115
    :cond_0
    return-void
.end method

.method private static native checkConnect(Ljava/io/FileDescriptor;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureReadOpen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 258
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 259
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 261
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    return v0
.end method

.method private ensureWriteOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 269
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    .line 265
    return-void
.end method

.method private readerCleanup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 279
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 280
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 276
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native sendOutOfBandData(Ljava/io/FileDescriptor;B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private writerCleanup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 287
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 284
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 7
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2

    .line 595
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 596
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 597
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 595
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 594
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    .line 599
    :cond_0
    :try_start_5
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 600
    new-instance v1, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v1

    .line 601
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    .line 602
    new-instance v1, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v1

    .line 603
    :cond_2
    if-nez p1, :cond_3

    .line 604
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 605
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-static {v1, v5, v6}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 606
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-static {v1, v5, v6}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 607
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v2

    .line 611
    return-object p0

    .line 604
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_3
    :try_start_8
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .locals 14
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    const/4 v2, 0x0

    .line 640
    .local v2, "localPort":I
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v8

    .line 641
    :try_start_0
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 642
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureOpenAndUnconnected()V

    .line 643
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 644
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 645
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_0

    .line 646
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 647
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 646
    invoke-virtual {v4, v6, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 649
    const/4 v3, 0x0

    .line 652
    .local v3, "n":I
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 653
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 654
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v6

    if-nez v6, :cond_2

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 679
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 680
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 681
    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 683
    :catch_0
    move-exception v5

    .line 687
    .local v5, "x":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 688
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 648
    .end local v5    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v10

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 641
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "n":I
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v9

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 640
    :catchall_2
    move-exception v6

    monitor-exit v8

    throw v6

    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v3    # "n":I
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 655
    const/4 v6, 0x0

    monitor-exit v8

    return v6

    .line 658
    :cond_2
    :try_start_b
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v6, :cond_3

    .line 659
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 660
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 661
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 659
    invoke-static {v6, v11, v12}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 663
    :cond_3
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v12

    iput-wide v12, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit v7

    .line 666
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 667
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 668
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 669
    :cond_5
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 671
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 669
    invoke-static {v6, v0, v7}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v3

    .line 672
    const/4 v6, -0x3

    if-ne v3, v6, :cond_6

    .line 673
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v6

    .line 672
    if-nez v6, :cond_4

    .line 679
    :cond_6
    :try_start_d
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 680
    if-gtz v3, :cond_7

    const/4 v6, -0x2

    if-ne v3, v6, :cond_9

    :cond_7
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 681
    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_c

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 653
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catchall_3
    move-exception v6

    :try_start_e
    monitor-exit v7

    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 678
    :catchall_4
    move-exception v6

    .line 679
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 680
    if-gtz v3, :cond_8

    const/4 v7, -0x2

    if-ne v3, v7, :cond_a

    :cond_8
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 681
    sget-boolean v7, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_b

    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 680
    .restart local v0    # "ia":Ljava/net/InetAddress;
    :cond_9
    const/4 v6, 0x0

    goto :goto_0

    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_a
    const/4 v7, 0x0

    goto :goto_1

    .line 678
    :cond_b
    throw v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 690
    .restart local v0    # "ia":Ljava/net/InetAddress;
    :cond_c
    :try_start_10
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 691
    :try_start_11
    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 692
    if-lez v3, :cond_e

    .line 696
    const/4 v6, 0x2

    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 697
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 698
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :cond_d
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 699
    const/4 v6, 0x1

    monitor-exit v8

    return v6

    .line 703
    :cond_e
    :try_start_15
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-nez v6, :cond_f

    .line 704
    const/4 v6, 0x1

    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 705
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 706
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v6

    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_f
    :try_start_16
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 711
    const/4 v6, 0x0

    monitor-exit v8

    return v6

    .line 690
    :catchall_5
    move-exception v6

    :try_start_19
    monitor-exit v7

    throw v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
.end method

.method ensureOpenAndUnconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 630
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 631
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 632
    :cond_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 633
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    .line 626
    return-void
.end method

.method public finishConnect()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 717
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    .line 718
    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 719
    :try_start_1
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 720
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 719
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v7

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 718
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v6

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 717
    :catchall_2
    move-exception v2

    monitor-exit v5

    throw v2

    .line 722
    :cond_0
    :try_start_5
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v5

    .line 723
    return v3

    .line 724
    :cond_1
    :try_start_8
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eq v2, v3, :cond_2

    .line 725
    new-instance v2, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v2}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 727
    const/4 v0, 0x0

    .line 730
    .local v0, "n":I
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 731
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 732
    :try_start_b
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 733
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v2

    if-nez v2, :cond_7

    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 766
    :try_start_f
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 767
    const-wide/16 v10, 0x0

    :try_start_10
    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 768
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v2, v13, :cond_3

    .line 769
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 775
    const/4 v0, 0x0

    :cond_3
    :try_start_11
    monitor-exit v9
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 778
    if-ltz v4, :cond_4

    if-nez v12, :cond_5

    :cond_4
    :goto_0
    :try_start_12
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 779
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 781
    :catch_0
    move-exception v1

    .line 785
    .local v1, "x":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 786
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 766
    .end local v1    # "x":Ljava/io/IOException;
    :catchall_3
    move-exception v2

    :try_start_14
    monitor-exit v9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_5
    move v3, v4

    .line 778
    goto :goto_0

    :cond_6
    :try_start_16
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    monitor-exit v5

    .line 734
    return v4

    .line 736
    :cond_7
    :try_start_17
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    monitor-exit v8

    .line 739
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 740
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_e

    .line 742
    :cond_8
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 743
    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 742
    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v0

    .line 744
    const/4 v2, -0x3

    if-ne v0, v2, :cond_9

    .line 745
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-result v2

    .line 744
    if-nez v2, :cond_8

    :cond_9
    :try_start_19
    monitor-exit v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 766
    :try_start_1a
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 767
    const-wide/16 v8, 0x0

    :try_start_1b
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 768
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v2, v13, :cond_a

    .line 769
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 775
    const/4 v0, 0x0

    :cond_a
    :try_start_1c
    monitor-exit v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 778
    if-gtz v0, :cond_b

    if-ne v0, v12, :cond_f

    :cond_b
    move v2, v3

    :goto_1
    :try_start_1d
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 779
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 732
    :catchall_4
    move-exception v2

    :try_start_1e
    monitor-exit v8

    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 731
    :catchall_5
    move-exception v2

    :try_start_1f
    monitor-exit v7

    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 765
    :catchall_6
    move-exception v2

    .line 766
    :try_start_20
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 767
    const-wide/16 v8, 0x0

    :try_start_21
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 768
    iget v8, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v8, v13, :cond_c

    .line 769
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 775
    const/4 v0, 0x0

    :cond_c
    :try_start_22
    monitor-exit v7

    .line 778
    if-gtz v0, :cond_d

    if-ne v0, v12, :cond_10

    :cond_d
    :goto_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 779
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_11

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 751
    :cond_e
    :goto_3
    :try_start_23
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 752
    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 751
    const/4 v9, 0x1

    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v0

    .line 753
    if-eqz v0, :cond_e

    .line 758
    const/4 v2, -0x3

    if-ne v0, v2, :cond_9

    .line 759
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    move-result v2

    .line 758
    if-eqz v2, :cond_9

    goto :goto_3

    .line 766
    :catchall_7
    move-exception v2

    :try_start_24
    monitor-exit v7
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    throw v2

    :cond_f
    move v2, v4

    .line 778
    goto :goto_1

    .line 766
    :catchall_8
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_10
    move v3, v4

    .line 778
    goto :goto_2

    .line 765
    :cond_11
    throw v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 788
    :cond_12
    if-lez v0, :cond_14

    .line 789
    :try_start_26
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 790
    const/4 v2, 0x2

    :try_start_27
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 791
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 792
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    :cond_13
    :try_start_28
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :try_start_29
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    monitor-exit v5

    .line 794
    return v3

    .line 789
    :catchall_9
    move-exception v2

    :try_start_2a
    monitor-exit v4

    throw v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    :cond_14
    :try_start_2b
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    monitor-exit v5

    .line 796
    return v4
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

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
    .line 149
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
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
    .line 202
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
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

    .line 207
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 211
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    .line 212
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 211
    if-eqz v0, :cond_3

    .line 215
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 219
    :cond_3
    :try_start_2
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5

    .line 220
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 221
    :cond_4
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 161
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    const-wide/16 v4, 0x0

    .line 853
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 862
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 863
    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 869
    :cond_0
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 870
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 872
    :cond_1
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 873
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 885
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 886
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    .line 852
    return-void

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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
    .line 577
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 576
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionPending()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 621
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInputOpen()Z
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 836
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isOutputOpen()Z
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public kill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 891
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 892
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    monitor-exit v1

    .line 893
    return-void

    .line 894
    :cond_0
    :try_start_1
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 895
    const/4 v0, 0x4

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 896
    return-void

    .line 898
    :cond_1
    :try_start_2
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 898
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 903
    :cond_4
    :try_start_3
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 904
    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 905
    const/4 v0, 0x4

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v1

    .line 890
    return-void

    .line 907
    :cond_5
    const/4 v0, 0x3

    :try_start_4
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x2

    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 297
    :cond_0
    iget-object v10, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v10

    .line 298
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v10

    .line 299
    return v11

    .line 300
    :cond_1
    const/4 v0, 0x0

    .line 301
    .local v0, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 304
    .end local v0    # "traceContext":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    .line 310
    .local v6, "n":I
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 312
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 313
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_6

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 392
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    int-to-long v4, v7

    const/4 v3, 0x0

    .line 395
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 415
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 419
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 420
    :try_start_6
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_4

    :try_start_7
    monitor-exit v1

    .line 424
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    invoke-static {v6}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 297
    .end local v6    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .restart local v6    # "n":I
    :cond_4
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v10

    .line 421
    return v11

    .line 419
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    monitor-exit v10

    .line 321
    return v7

    .line 328
    :cond_6
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit v2

    .line 382
    :cond_7
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v2, -0x1

    sget-object v4, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v2, v3, v4}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v6

    .line 383
    const/4 v1, -0x3

    if-ne v6, v1, :cond_8

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 388
    :cond_8
    invoke-static {v6}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result v8

    .line 392
    :try_start_c
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 395
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    if-lez v6, :cond_10

    move v3, v6

    :goto_0
    int-to-long v4, v3

    const/4 v3, 0x0

    .line 395
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 415
    :cond_9
    if-gtz v6, :cond_a

    if-ne v6, v12, :cond_11

    :cond_a
    :goto_1
    invoke-virtual {p0, v9}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 419
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 420
    if-gtz v6, :cond_b

    :try_start_d
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v2, :cond_12

    :cond_b
    :try_start_e
    monitor-exit v1

    .line 424
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_13

    invoke-static {v6}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 312
    :catchall_2
    move-exception v1

    :try_start_f
    monitor-exit v2

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 391
    :catchall_3
    move-exception v1

    move-object v8, v1

    .line 392
    :try_start_10
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 395
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    if-lez v6, :cond_14

    move v3, v6

    :goto_2
    int-to-long v4, v3

    const/4 v3, 0x0

    .line 395
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 415
    :cond_c
    if-gtz v6, :cond_d

    if-ne v6, v12, :cond_e

    :cond_d
    move v7, v9

    :cond_e
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 419
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 420
    if-gtz v6, :cond_f

    :try_start_11
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v2, :cond_15

    :cond_f
    :try_start_12
    monitor-exit v1

    .line 424
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_16

    invoke-static {v6}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_10
    move v3, v7

    .line 396
    goto :goto_0

    :cond_11
    move v9, v7

    .line 415
    goto :goto_1

    :cond_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit v10

    .line 421
    return v11

    .line 419
    :catchall_4
    move-exception v2

    :try_start_13
    monitor-exit v1

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_13
    monitor-exit v10

    .line 388
    return v8

    :cond_14
    move v3, v7

    .line 396
    goto :goto_2

    :cond_15
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit v10

    .line 421
    return v11

    .line 419
    :catchall_5
    move-exception v2

    :try_start_15
    monitor-exit v1

    throw v2

    .line 391
    :cond_16
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 12
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 434
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 433
    :cond_1
    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 435
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v9

    .line 436
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 437
    const-wide/16 v2, -0x1

    monitor-exit v9

    return-wide v2

    .line 438
    :cond_2
    const-wide/16 v6, 0x0

    .line 439
    .local v6, "n":J
    const/4 v0, 0x0

    .line 440
    .local v0, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 444
    .end local v0    # "traceContext":Ljava/lang/Object;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 445
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 446
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_7

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 458
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 461
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 460
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 463
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 464
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 465
    :try_start_6
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_5

    :try_start_7
    monitor-exit v1

    .line 468
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_6

    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 435
    .end local v6    # "n":J
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .restart local v6    # "n":J
    :cond_5
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 466
    const-wide/16 v2, -0x1

    monitor-exit v9

    return-wide v2

    .line 464
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 447
    :cond_6
    const-wide/16 v2, 0x0

    monitor-exit v9

    return-wide v2

    .line 448
    :cond_7
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit v2

    .line 452
    :cond_8
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, p2, p3, v2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v6

    .line 453
    const-wide/16 v2, -0x3

    cmp-long v1, v6, v2

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_8

    .line 455
    :cond_9
    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-wide v10

    .line 458
    :try_start_c
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 460
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 461
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_10

    move-wide v4, v6

    :goto_0
    const/4 v3, 0x0

    .line 460
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 463
    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-gtz v1, :cond_b

    const-wide/16 v2, -0x2

    cmp-long v1, v6, v2

    if-nez v1, :cond_11

    :cond_b
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 464
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 465
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_c

    :try_start_d
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v2, :cond_12

    :cond_c
    :try_start_e
    monitor-exit v1

    .line 468
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_13

    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 445
    :catchall_2
    move-exception v1

    :try_start_f
    monitor-exit v2

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 457
    :catchall_3
    move-exception v1

    move-object v8, v1

    .line 458
    :try_start_10
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 460
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 461
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_14

    move-wide v4, v6

    :goto_2
    const/4 v3, 0x0

    .line 460
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 463
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-gtz v1, :cond_e

    const-wide/16 v2, -0x2

    cmp-long v1, v6, v2

    if-nez v1, :cond_15

    :cond_e
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 464
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 465
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_f

    :try_start_11
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v2, :cond_16

    :cond_f
    :try_start_12
    monitor-exit v1

    .line 468
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_17

    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 461
    :cond_10
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 463
    :cond_11
    const/4 v1, 0x0

    goto :goto_1

    :cond_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 466
    const-wide/16 v2, -0x1

    monitor-exit v9

    return-wide v2

    .line 464
    :catchall_4
    move-exception v2

    :try_start_13
    monitor-exit v1

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_13
    monitor-exit v9

    .line 455
    return-wide v10

    .line 461
    :cond_14
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 463
    :cond_15
    const/4 v1, 0x0

    goto :goto_3

    :cond_16
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 466
    const-wide/16 v2, -0x1

    monitor-exit v9

    return-wide v2

    .line 464
    :catchall_5
    move-exception v2

    :try_start_15
    monitor-exit v1

    throw v2

    .line 457
    :cond_17
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method sendOutOfBandData(B)I
    .locals 9
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 548
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 549
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    const/4 v0, 0x0

    .line 552
    .local v0, "n":I
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 553
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 554
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 565
    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 566
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 567
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 568
    :try_start_5
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    monitor-exit v2

    .line 571
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 548
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 569
    .restart local v0    # "n":I
    :cond_0
    :try_start_7
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 567
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1
    monitor-exit v4

    .line 555
    return v3

    .line 556
    :cond_2
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v5

    .line 559
    :cond_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(Ljava/io/FileDescriptor;B)I

    move-result v0

    .line 560
    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 562
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v1

    .line 565
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 566
    if-gtz v0, :cond_5

    if-ne v0, v8, :cond_9

    :cond_5
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 567
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 568
    if-gtz v0, :cond_6

    :try_start_c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_a

    :cond_6
    :try_start_d
    monitor-exit v2

    .line 571
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 553
    :catchall_2
    move-exception v1

    :try_start_e
    monitor-exit v5

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 564
    :catchall_3
    move-exception v1

    .line 565
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 566
    if-gtz v0, :cond_7

    if-ne v0, v8, :cond_c

    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 567
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 568
    if-gtz v0, :cond_8

    :try_start_10
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v3, :cond_d

    :cond_8
    :try_start_11
    monitor-exit v2

    .line 571
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_9
    move v2, v3

    .line 566
    goto :goto_0

    .line 569
    :cond_a
    :try_start_12
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 567
    :catchall_4
    move-exception v1

    :try_start_13
    monitor-exit v2

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_b
    monitor-exit v4

    .line 562
    return v1

    :cond_c
    move v2, v3

    .line 566
    goto :goto_1

    .line 569
    :cond_d
    :try_start_14
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 567
    :catchall_5
    move-exception v1

    :try_start_15
    monitor-exit v2

    throw v1

    .line 564
    :cond_e
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
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
    .line 166
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/SocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
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

    .line 174
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 179
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4

    .line 180
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    invoke-static {v0, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    .line 182
    return-object p0

    .line 183
    :cond_4
    :try_start_2
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5

    .line 184
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 183
    if-eqz v0, :cond_5

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 188
    return-object p0

    .line 192
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_5
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 193
    return-object p0
.end method

.method public shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 806
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 808
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-eqz v0, :cond_3

    .line 809
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 810
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 811
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 812
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    .line 814
    return-object p0
.end method

.method public shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 823
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 825
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 827
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 828
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 829
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    .line 831
    return-object p0
.end method

.method public socket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 142
    invoke-static {p0}, Lsun/nio/ch/SocketAdaptor;->create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 143
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 140
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
    .line 249
    sget-object v0, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 991
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 992
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 994
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 995
    const-string/jumbo v2, "closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    :goto_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1025
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 997
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 998
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    packed-switch v2, :pswitch_data_0

    .line 1013
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 1014
    .local v0, "addr":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_2

    .line 1015
    const-string/jumbo v2, " local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1016
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1019
    const-string/jumbo v2, " remote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 1000
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "unconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 997
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1003
    :pswitch_1
    :try_start_2
    const-string/jumbo v2, "connection-pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1006
    :pswitch_2
    const-string/jumbo v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v2, :cond_4

    .line 1008
    const-string/jumbo v2, " ishut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1009
    :cond_4
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v2, :cond_1

    .line 1010
    const-string/jumbo v2, " oshut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 973
    const/4 v0, 0x1

    .line 974
    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    .line 975
    or-int/lit8 v0, v0, 0x4

    .line 976
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    .line 977
    or-int/lit8 v0, v0, 0x4

    .line 978
    :cond_2
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 970
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 960
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 7
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 917
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 918
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 919
    .local v2, "oldOps":I
    move v1, p2

    .line 921
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    .line 925
    return v4

    .line 928
    :cond_0
    and-int/lit8 v5, p1, 0x18

    if-eqz v5, :cond_2

    .line 930
    move v1, v0

    .line 931
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 934
    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 935
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 938
    :cond_2
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    .line 939
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_3

    .line 940
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v6, :cond_3

    .line 941
    or-int/lit8 v1, p2, 0x1

    .line 943
    :cond_3
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_5

    .line 944
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_5

    .line 945
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eqz v5, :cond_4

    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v3, :cond_5

    .line 946
    :cond_4
    or-int/lit8 v1, v1, 0x8

    .line 947
    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 950
    :cond_5
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_6

    .line 951
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_6

    .line 952
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v5, v6, :cond_6

    .line 953
    or-int/lit8 v1, v1, 0x4

    .line 955
    :cond_6
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 956
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_7

    :goto_1
    return v3

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 476
    :cond_0
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 477
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "n":I
    invoke-static {}, Lsun/misc/IoTrace;->socketWriteBegin()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 483
    .local v1, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 484
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 485
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 496
    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 497
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 498
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    int-to-long v8, v3

    .line 497
    invoke-static {v1, v2, v4, v8, v9}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    .line 499
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 500
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 501
    :try_start_5
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    monitor-exit v4

    .line 504
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 476
    .end local v0    # "n":I
    .end local v1    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v6

    throw v2

    .line 502
    .restart local v0    # "n":I
    .restart local v1    # "traceContext":Ljava/lang/Object;
    :cond_1
    :try_start_7
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 500
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v4

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    monitor-exit v6

    .line 486
    return v3

    .line 487
    :cond_3
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v5

    .line 490
    :cond_4
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v8, -0x1

    sget-object v5, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, v8, v9, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 491
    const/4 v2, -0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_4

    .line 493
    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v5

    .line 496
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 497
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 498
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    if-lez v0, :cond_b

    move v2, v0

    :goto_0
    int-to-long v10, v2

    .line 497
    invoke-static {v1, v7, v8, v10, v11}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    .line 499
    if-gtz v0, :cond_6

    if-ne v0, v12, :cond_c

    :cond_6
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 500
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 501
    if-gtz v0, :cond_7

    :try_start_c
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v2, :cond_d

    :cond_7
    :try_start_d
    monitor-exit v3

    .line 504
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 484
    :catchall_2
    move-exception v2

    :try_start_e
    monitor-exit v5

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 495
    :catchall_3
    move-exception v2

    .line 496
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 497
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 498
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    if-lez v0, :cond_f

    move v5, v0

    :goto_2
    int-to-long v10, v5

    .line 497
    invoke-static {v1, v7, v8, v10, v11}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    .line 499
    if-gtz v0, :cond_8

    if-ne v0, v12, :cond_9

    :cond_8
    move v3, v4

    :cond_9
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 500
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 501
    if-gtz v0, :cond_a

    :try_start_10
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v4, :cond_10

    :cond_a
    :try_start_11
    monitor-exit v3

    .line 504
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_11

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_b
    move v2, v3

    .line 498
    goto :goto_0

    :cond_c
    move v4, v3

    .line 499
    goto :goto_1

    .line 502
    :cond_d
    :try_start_12
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 500
    :catchall_4
    move-exception v2

    :try_start_13
    monitor-exit v3

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_e
    monitor-exit v6

    .line 493
    return v5

    :cond_f
    move v5, v3

    .line 498
    goto :goto_2

    .line 502
    :cond_10
    :try_start_14
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 500
    :catchall_5
    move-exception v2

    :try_start_15
    monitor-exit v3

    throw v2

    .line 495
    :cond_11
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 12
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 513
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 512
    :cond_1
    array-length v3, p1

    sub-int/2addr v3, p3

    if-gt p2, v3, :cond_0

    .line 514
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 515
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V

    .line 516
    const-wide/16 v0, 0x0

    .line 518
    .local v0, "n":J
    invoke-static {}, Lsun/misc/IoTrace;->socketWriteBegin()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 520
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 521
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 522
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_4

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 533
    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 534
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 535
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const-wide/16 v8, 0x0

    .line 534
    invoke-static {v2, v3, v4, v8, v9}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    .line 536
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 537
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 538
    :try_start_5
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    :try_start_6
    monitor-exit v4

    .line 541
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 514
    .end local v0    # "n":J
    .end local v2    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 539
    .restart local v0    # "n":J
    .restart local v2    # "traceContext":Ljava/lang/Object;
    :cond_2
    :try_start_7
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 537
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v4

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 523
    :cond_3
    const-wide/16 v4, 0x0

    monitor-exit v6

    return-wide v4

    .line 524
    :cond_4
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v4

    .line 527
    :cond_5
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v4, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v3, p1, p2, p3, v4}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 528
    const-wide/16 v4, -0x3

    cmp-long v3, v0, v4

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_5

    .line 530
    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-wide v8

    .line 533
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 534
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 535
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_b

    move-wide v4, v0

    .line 534
    :goto_0
    invoke-static {v2, v3, v7, v4, v5}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    .line 536
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_7

    const-wide/16 v4, -0x2

    cmp-long v3, v0, v4

    if-nez v3, :cond_c

    :cond_7
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 537
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 538
    const-wide/16 v10, 0x0

    cmp-long v3, v0, v10

    if-gtz v3, :cond_8

    :try_start_c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_d

    :cond_8
    :try_start_d
    monitor-exit v4

    .line 541
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_e

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 521
    :catchall_2
    move-exception v3

    :try_start_e
    monitor-exit v4

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 532
    :catchall_3
    move-exception v3

    .line 533
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 534
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 535
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_f

    move-wide v4, v0

    .line 534
    :goto_2
    invoke-static {v2, v7, v8, v4, v5}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    .line 536
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_9

    const-wide/16 v4, -0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_10

    :cond_9
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 537
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 538
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-gtz v5, :cond_a

    :try_start_10
    iget-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v5, :cond_11

    :cond_a
    :try_start_11
    monitor-exit v4

    .line 541
    sget-boolean v4, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_12

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 535
    :cond_b
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 536
    :cond_c
    const/4 v3, 0x0

    goto :goto_1

    .line 539
    :cond_d
    :try_start_12
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 537
    :catchall_4
    move-exception v3

    :try_start_13
    monitor-exit v4

    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_e
    monitor-exit v6

    .line 530
    return-wide v8

    .line 535
    :cond_f
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 536
    :cond_10
    const/4 v4, 0x0

    goto :goto_3

    .line 539
    :cond_11
    :try_start_14
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 537
    :catchall_5
    move-exception v3

    :try_start_15
    monitor-exit v4

    throw v3

    .line 532
    :cond_12
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method
