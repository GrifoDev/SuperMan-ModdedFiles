.class Lsun/nio/ch/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x1

.field private static final ST_KILLED:I = 0x2

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private cachedSenderInetAddress:Ljava/net/InetAddress;

.field private cachedSenderPort:I

.field private final family:Ljava/net/ProtocolFamily;

.field final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private reuseAddressEmulated:Z

.field private sender:Ljava/net/SocketAddress;

.field private socket:Ljava/net/DatagramSocket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    .line 51
    new-instance v0, Lsun/nio/ch/DatagramDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/DatagramDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 909
    invoke-static {}, Lsun/nio/ch/DatagramChannelImpl;->initIDs()V

    .line 45
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 65
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 66
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 112
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    .line 114
    :try_start_0
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 114
    :goto_0
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 116
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 117
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 109
    return-void

    .line 115
    :cond_0
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 121
    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 151
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 65
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 66
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 152
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 152
    :goto_0
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 154
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 155
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 157
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 149
    return-void

    .line 153
    :cond_0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V
    .locals 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 65
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 66
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 129
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_1

    .line 130
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_1

    .line 132
    if-nez p2, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'family\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Protocol family not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne p2, v0, :cond_2

    .line 138
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IPv6 not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 143
    invoke-static {p2, v1}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 144
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    .line 145
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 126
    return-void
.end method

.method private static native disconnect0(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method private static native initIDs()V
.end method

.method private receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 401
    .local v4, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 402
    .local v1, "lim":I
    sget-boolean v8, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    if-gt v4, v1, :cond_0

    move v6, v7

    :cond_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 403
    :cond_1
    if-gt v4, v1, :cond_2

    sub-int v5, v1, v4

    .line 404
    .local v5, "rem":I
    :goto_0
    instance-of v6, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v6, :cond_3

    if-lez v5, :cond_3

    .line 405
    invoke-direct {p0, p1, p2, v5, v4}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v6

    return v6

    .line 403
    .end local v5    # "rem":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "rem":I
    goto :goto_0

    .line 410
    :cond_3
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 411
    .local v3, "newSize":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 413
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 415
    const/4 v6, 0x0

    invoke-direct {p0, p1, v0, v3, v6}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 416
    .local v2, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 417
    if-lez v2, :cond_4

    if-lez v5, :cond_4

    .line 418
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 419
    return v2

    .line 420
    .end local v2    # "n":I
    :catchall_0
    move-exception v6

    .line 421
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 420
    throw v6
.end method

.method private native receive0(Ljava/io/FileDescriptor;JIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "rem"    # I
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p2

    .line 429
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, v0

    .line 430
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    .line 429
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/DatagramChannelImpl;->receive0(Ljava/io/FileDescriptor;JIZ)I

    move-result v6

    .line 431
    .local v6, "n":I
    if-lez v6, :cond_0

    .line 432
    add-int v0, p4, v6

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    :cond_0
    return v6
.end method

.method private send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 499
    instance-of v5, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v5, :cond_0

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v5

    return v5

    .line 503
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 504
    .local v3, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 505
    .local v1, "lim":I
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_2

    if-gt v3, v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    move v5, v4

    goto :goto_0

    .line 506
    :cond_2
    if-gt v3, v1, :cond_3

    sub-int v4, v1, v3

    .line 508
    .local v4, "rem":I
    :cond_3
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 510
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 511
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 513
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 515
    invoke-direct {p0, p1, v0, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v2

    .line 516
    .local v2, "n":I
    if-lez v2, :cond_4

    .line 518
    add-int v5, v3, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 520
    return v2

    .line 521
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    .line 522
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 521
    throw v5
.end method

.method private native send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 531
    .local v11, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 532
    .local v2, "lim":I
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-gt v11, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 533
    :cond_1
    if-gt v11, v2, :cond_3

    sub-int v8, v2, v11

    .line 535
    .local v8, "rem":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq v3, v5, :cond_4

    const/4 v4, 0x1

    .line 538
    .local v4, "preferIPv6":Z
    :goto_2
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object v3, v0

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v6

    int-to-long v14, v11

    add-long/2addr v6, v14

    .line 539
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 538
    invoke-direct/range {v3 .. v10}, Lsun/nio/ch/DatagramChannelImpl;->send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    :try_end_0
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 545
    .local v13, "written":I
    :goto_3
    if-lez v13, :cond_2

    .line 546
    add-int v3, v11, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 547
    :cond_2
    return v13

    .line 533
    .end local v4    # "preferIPv6":Z
    .end local v8    # "rem":I
    .end local v13    # "written":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "rem":I
    goto :goto_1

    .line 535
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "preferIPv6":Z
    goto :goto_2

    .line 540
    :catch_0
    move-exception v12

    .line 541
    .local v12, "pue":Ljava/net/PortUnreachableException;
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 542
    throw v12

    .line 543
    :cond_5
    move v13, v8

    .restart local v13    # "written":I
    goto :goto_3
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 10
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 681
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 682
    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 683
    :try_start_2
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 684
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    .line 685
    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 682
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 681
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 680
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 687
    :cond_0
    if-nez p1, :cond_4

    .line 689
    :try_start_5
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_3

    .line 690
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "0.0.0.0"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 704
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 705
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2

    .line 706
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 708
    :cond_2
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-static {v3, v7, v8, v9}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 709
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v4

    .line 713
    return-object p0

    .line 692
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_3
    :try_start_8
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 695
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 698
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_1

    .line 699
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 700
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-nez v3, :cond_1

    .line 701
    new-instance v3, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v3}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 11
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v1, 0x0

    .line 735
    .local v1, "localPort":I
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    .line 736
    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 737
    :try_start_1
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 738
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpenAndUnconnected()V

    .line 739
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 740
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 741
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_0

    .line 742
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 742
    invoke-virtual {v3, v4, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 744
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    .line 745
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 746
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    .line 747
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    .line 744
    invoke-static {v4, v8, v9, v10}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v2

    .line 748
    .local v2, "n":I
    if-gtz v2, :cond_1

    .line 749
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "n":I
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v7

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 736
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 735
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 752
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "n":I
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v4, 0x1

    :try_start_5
    iput v4, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 753
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 754
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    .line 755
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderInetAddress:Ljava/net/InetAddress;

    .line 756
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iput v4, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderPort:I

    .line 759
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v5

    .line 763
    return-object p0
.end method

.method public disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 768
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 769
    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 770
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 772
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 773
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 774
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    .line 775
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .line 775
    invoke-virtual {v2, v3, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 777
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_2

    const/4 v0, 0x1

    .line 778
    .local v0, "isIPv6":Z
    :goto_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect0(Ljava/io/FileDescriptor;Z)V

    .line 779
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 780
    const/4 v3, 0x0

    iput v3, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    .line 783
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v4

    .line 787
    return-object p0

    .end local v0    # "isIPv6":Z
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v4

    .line 771
    return-object p0

    .line 777
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isIPv6":Z
    goto :goto_0

    .line 769
    .end local v0    # "isIPv6":Z
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v6

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 768
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v5

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 767
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method ensureOpenAndUnconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 726
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    if-eqz v0, :cond_1

    .line 727
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Connect already invoked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 722
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->close()V

    .line 820
    :cond_0
    return-void
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

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
    .line 169
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 8
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
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const/4 v7, 0x0

    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 251
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 254
    :cond_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 255
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 257
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_3

    .line 259
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v4, v6, :cond_2

    .line 260
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 262
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 266
    :cond_3
    :try_start_2
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-eq p1, v4, :cond_4

    .line 267
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_5

    .line 269
    :cond_4
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 272
    :cond_5
    :try_start_3
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_b

    .line 273
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v4, v6, :cond_8

    .line 274
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface4(Ljava/io/FileDescriptor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 275
    .local v0, "address":I
    if-nez v0, :cond_6

    monitor-exit v5

    .line 276
    return-object v7

    .line 278
    :cond_6
    :try_start_4
    invoke-static {v0}, Lsun/nio/ch/Net;->inet4FromInt(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 279
    .local v1, "ia":Ljava/net/InetAddress;
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 280
    .local v3, "ni":Ljava/net/NetworkInterface;
    if-nez v3, :cond_7

    .line 281
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Unable to map address to interface"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .end local v0    # "address":I
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "address":I
    .restart local v1    # "ia":Ljava/net/InetAddress;
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_7
    monitor-exit v5

    .line 282
    return-object v3

    .line 284
    .end local v0    # "address":I
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_8
    :try_start_5
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface6(Ljava/io/FileDescriptor;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    .line 285
    .local v2, "index":I
    if-nez v2, :cond_9

    monitor-exit v5

    .line 286
    return-object v7

    .line 288
    :cond_9
    :try_start_6
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 289
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    if-nez v3, :cond_a

    .line 290
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Unable to map index to interface"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    monitor-exit v5

    .line 291
    return-object v3

    .line 295
    .end local v2    # "index":I
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_b
    :try_start_7
    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_c

    .line 296
    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    .line 295
    if-eqz v4, :cond_c

    .line 298
    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 302
    :cond_c
    :try_start_8
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 181
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 791
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 792
    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 793
    sget-object v2, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 794
    :cond_0
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 797
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .local v0, "th":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    .line 798
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 799
    :cond_1
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 800
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 801
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_3

    .line 802
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 790
    return-void

    .line 791
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
    .line 663
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 662
    return-void
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 717
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public kill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 807
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 808
    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    monitor-exit v1

    .line 809
    return-void

    .line 810
    :cond_0
    :try_start_1
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 811
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 812
    return-void

    .line 814
    :cond_1
    :try_start_2
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

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

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 814
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 815
    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 816
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 806
    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 551
    if-nez p1, :cond_0

    .line 552
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 553
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 554
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 555
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 556
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 553
    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, "n":I
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 562
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_3

    .line 570
    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 571
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 572
    sget-boolean v1, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    monitor-exit v4

    .line 563
    return v3

    .line 564
    :cond_3
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 566
    :cond_4
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 567
    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 568
    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    .line 570
    const-wide/16 v6, 0x0

    :try_start_7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 571
    if-gtz v0, :cond_6

    if-ne v0, v8, :cond_7

    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 572
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    move v2, v3

    .line 571
    goto :goto_0

    :cond_8
    monitor-exit v4

    .line 568
    return v1

    .line 569
    :catchall_2
    move-exception v1

    .line 570
    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 571
    if-gtz v0, :cond_9

    if-ne v0, v8, :cond_a

    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 572
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a
    move v2, v3

    .line 571
    goto :goto_1

    .line 569
    :cond_b
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 8
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 581
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 580
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_0

    .line 582
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    .line 583
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 584
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 585
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 586
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 582
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 588
    const-wide/16 v0, 0x0

    .line 590
    .local v0, "n":J
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 591
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-nez v2, :cond_4

    .line 599
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 600
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 601
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 592
    :cond_3
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    .line 593
    :cond_4
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 595
    :cond_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 596
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5

    .line 597
    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-wide v6

    .line 599
    const-wide/16 v2, 0x0

    :try_start_7
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 600
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 601
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 600
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    monitor-exit v4

    .line 597
    return-wide v6

    .line 598
    :catchall_2
    move-exception v2

    .line 599
    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 600
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_a

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_b

    :cond_a
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 601
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_c

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 600
    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    .line 598
    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 14
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Read-only buffer"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_0
    if-nez p1, :cond_1

    .line 338
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 341
    :cond_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v5, :cond_2

    .line 342
    return-object v12

    .line 343
    :cond_2
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v8

    .line 344
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "n":I
    const/4 v0, 0x0

    .line 351
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 352
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    .line 390
    const-wide/16 v6, 0x0

    :try_start_2
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 391
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 392
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "n":I
    :cond_3
    monitor-exit v8

    .line 353
    return-object v12

    .line 354
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 355
    .local v4, "security":Ljava/lang/SecurityManager;
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 356
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_a

    .line 358
    :cond_5
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 359
    const/4 v5, -0x3

    if-ne v2, v5, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    .line 360
    :cond_6
    if-ne v2, v13, :cond_12

    .line 390
    const-wide/16 v10, 0x0

    :try_start_4
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 391
    if-gtz v2, :cond_7

    if-ne v2, v13, :cond_8

    :cond_7
    :goto_0
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 392
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_9

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move v6, v7

    .line 391
    goto :goto_0

    :cond_9
    monitor-exit v8

    .line 361
    return-object v12

    .line 363
    :cond_a
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 366
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :cond_b
    :goto_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, v0}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 367
    const/4 v5, -0x3

    if-ne v2, v5, :cond_c

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-nez v5, :cond_b

    .line 368
    :cond_c
    if-ne v2, v13, :cond_11

    .line 388
    if-eqz v0, :cond_d

    .line 389
    :try_start_6
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 390
    :cond_d
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 391
    if-gtz v2, :cond_e

    if-ne v2, v13, :cond_f

    :cond_e
    :goto_2
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 392
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_10

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    move v6, v7

    .line 391
    goto :goto_2

    :cond_10
    monitor-exit v8

    .line 369
    return-object v12

    .line 370
    :cond_11
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    check-cast v1, Ljava/net/InetSocketAddress;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 373
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :try_start_8
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 372
    invoke-virtual {v4, v5, v9}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 381
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 382
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 386
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_12
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 388
    if-eqz v0, :cond_13

    .line 389
    :try_start_a
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 390
    :cond_13
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 391
    if-gtz v2, :cond_14

    if-ne v2, v13, :cond_15

    :cond_14
    :goto_3
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 392
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_16

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_16

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 375
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v3

    .line 377
    .local v3, "se":Ljava/lang/SecurityException;
    :try_start_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 378
    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :cond_15
    move v6, v7

    .line 391
    goto :goto_3

    :cond_16
    monitor-exit v8

    .line 386
    return-object v5

    .line 387
    .end local v4    # "security":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v5

    .line 388
    if-eqz v0, :cond_17

    .line 389
    :try_start_c
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 390
    :cond_17
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    .line 391
    if-gtz v2, :cond_18

    if-ne v2, v13, :cond_19

    :cond_18
    :goto_4
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 392
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v6, :cond_1a

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v6

    if-nez v6, :cond_1a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_19
    move v6, v7

    .line 391
    goto :goto_4

    .line 387
    :cond_1a
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 439
    if-nez p1, :cond_0

    .line 440
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 442
    :cond_0
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 443
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 444
    invoke-static {p2}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 445
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 446
    .local v0, "ia":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 447
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Target address not resolved"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v0    # "ia":Ljava/net/InetAddress;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    .line 448
    .restart local v0    # "ia":Ljava/net/InetAddress;
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    .line 450
    if-nez p2, :cond_2

    .line 451
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v8

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 453
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_3

    .line 454
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 455
    invoke-virtual {v3, v0}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, "n":I
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 473
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v4

    if-nez v4, :cond_8

    .line 489
    const-wide/16 v4, 0x0

    :try_start_7
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 490
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 491
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v4, :cond_7

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 457
    .end local v2    # "n":I
    :cond_4
    :try_start_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 457
    invoke-virtual {v3, v4, v9}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    .line 462
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_5
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v4}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 463
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 464
    const-string/jumbo v5, "Connected address not equal to target address"

    .line 463
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    :cond_6
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v4

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v7

    return v4

    .restart local v2    # "n":I
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_7
    monitor-exit v7

    .line 474
    return v6

    .line 475
    :cond_8
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 476
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 479
    :cond_9
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v4, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v2

    .line 480
    const/4 v4, -0x3

    if-ne v2, v4, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 482
    :cond_a
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 483
    :try_start_b
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_b

    .line 484
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_b
    :try_start_c
    monitor-exit v8

    .line 487
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result v4

    .line 489
    const-wide/16 v8, 0x0

    :try_start_d
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 490
    if-gtz v2, :cond_c

    if-ne v2, v10, :cond_e

    :cond_c
    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 491
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_f

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 482
    :catchall_2
    move-exception v4

    :try_start_e
    monitor-exit v8

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 488
    :catchall_3
    move-exception v4

    .line 489
    const-wide/16 v8, 0x0

    :try_start_f
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 490
    if-gtz v2, :cond_d

    if-ne v2, v10, :cond_10

    :cond_d
    :goto_2
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 491
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_11

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_e
    move v5, v6

    .line 490
    goto :goto_1

    :cond_f
    monitor-exit v7

    .line 487
    return v4

    :cond_10
    move v5, v6

    .line 490
    goto :goto_2

    .line 488
    :cond_11
    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/DatagramChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 190
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 191
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 195
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 197
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_3

    .line 199
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v5, v7, :cond_2

    .line 200
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    .line 202
    return-object p0

    .line 205
    :cond_3
    :try_start_1
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-eq p1, v5, :cond_4

    .line 206
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_5

    .line 209
    :cond_4
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 210
    return-object p0

    .line 213
    :cond_5
    :try_start_2
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_a

    .line 214
    if-nez p2, :cond_6

    .line 215
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Cannot set IP_MULTICAST_IF to \'null\'"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 216
    :cond_6
    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/net/NetworkInterface;

    move-object v2, v0

    .line 217
    .local v2, "interf":Ljava/net/NetworkInterface;
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v5, v7, :cond_8

    .line 218
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 219
    .local v1, "index":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_7

    .line 220
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Network interface cannot be identified"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    :cond_7
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v1}, Lsun/nio/ch/Net;->setInterface6(Ljava/io/FileDescriptor;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "index":I
    :goto_0
    monitor-exit v6

    .line 230
    return-object p0

    .line 224
    :cond_8
    :try_start_4
    invoke-static {v2}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 225
    .local v3, "target":Ljava/net/Inet4Address;
    if-nez v3, :cond_9

    .line 226
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Network interface not configured for IPv4"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_9
    invoke-static {v3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v4

    .line 228
    .local v4, "targetAddress":I
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v4}, Lsun/nio/ch/Net;->setInterface4(Ljava/io/FileDescriptor;I)V

    goto :goto_0

    .line 232
    .end local v2    # "interf":Ljava/net/NetworkInterface;
    .end local v3    # "target":Ljava/net/Inet4Address;
    .end local v4    # "targetAddress":I
    :cond_a
    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_b

    .line 233
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v5

    .line 232
    if-eqz v5, :cond_b

    .line 233
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_b

    .line 235
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    .line 236
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    .line 240
    :cond_b
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v7, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 241
    return-object p0
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
    .line 186
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public socket()Ljava/net/DatagramSocket;
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 164
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 161
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
    .line 324
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 876
    const/4 v0, 0x1

    .line 877
    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    .line 878
    or-int/lit8 v0, v0, 0x4

    .line 879
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    .line 880
    or-int/lit8 v0, v0, 0x1

    .line 881
    :cond_2
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 872
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 866
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 862
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

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

    .line 831
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 832
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 833
    .local v2, "oldOps":I
    move v1, p2

    .line 835
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    .line 839
    return v4

    .line 842
    :cond_0
    and-int/lit8 v5, p1, 0x18

    if-eqz v5, :cond_2

    .line 844
    move v1, v0

    .line 845
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 846
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 849
    :cond_2
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    .line 850
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_3

    .line 851
    or-int/lit8 v1, p2, 0x1

    .line 853
    :cond_3
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_4

    .line 854
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    .line 855
    or-int/lit8 v1, v1, 0x4

    .line 857
    :cond_4
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 858
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_5

    :goto_1
    return v3

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 609
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 610
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 612
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 613
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 609
    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 615
    const/4 v0, 0x0

    .line 617
    .local v0, "n":I
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 618
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_3

    .line 626
    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 627
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 628
    sget-boolean v1, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    monitor-exit v4

    .line 619
    return v3

    .line 620
    :cond_3
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 622
    :cond_4
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    .line 623
    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 624
    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    .line 626
    const-wide/16 v6, 0x0

    :try_start_7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 627
    if-gtz v0, :cond_6

    if-ne v0, v8, :cond_7

    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 628
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    move v2, v3

    .line 627
    goto :goto_0

    :cond_8
    monitor-exit v4

    .line 624
    return v1

    .line 625
    :catchall_2
    move-exception v1

    .line 626
    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 627
    if-gtz v0, :cond_9

    if-ne v0, v8, :cond_a

    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 628
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a
    move v2, v3

    .line 627
    goto :goto_1

    .line 625
    :cond_b
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 8
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 637
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 636
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_0

    .line 638
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 639
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    .line 641
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 642
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 638
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 644
    const-wide/16 v0, 0x0

    .line 646
    .local v0, "n":J
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    .line 647
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-nez v2, :cond_4

    .line 655
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 656
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 657
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 648
    :cond_3
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    .line 649
    :cond_4
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 651
    :cond_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    .line 652
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5

    .line 653
    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-wide v6

    .line 655
    const-wide/16 v2, 0x0

    :try_start_7
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 656
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 657
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 656
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    monitor-exit v4

    .line 653
    return-wide v6

    .line 654
    :catchall_2
    move-exception v2

    .line 655
    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    .line 656
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_a

    const-wide/16 v6, -0x2

    cmp-long v3, v0, v6

    if-nez v3, :cond_b

    :cond_a
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    .line 657
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_c

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 656
    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    .line 654
    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method
