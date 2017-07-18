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

    const-class v0, Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    new-instance v0, Lsun/nio/ch/DatagramDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/DatagramDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {}, Lsun/nio/ch/DatagramChannelImpl;->initIDs()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    :try_start_0
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    :goto_0
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    const/4 v1, 0x0

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    return-void

    :cond_0
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    :goto_0
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    return-void

    :cond_0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_1

    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'family\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Protocol family not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne p2, v0, :cond_2

    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IPv6 not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {p2, v1}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

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

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static native initIDs()V
.end method

.method private receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-boolean v8, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    if-gt v4, v1, :cond_0

    move v6, v7

    :cond_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    if-gt v4, v1, :cond_2

    sub-int v5, v1, v4

    :goto_0
    instance-of v6, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v6, :cond_3

    if-lez v5, :cond_3

    invoke-direct {p0, p1, p2, v5, v4}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v6

    return v6

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    const/4 v6, 0x0

    invoke-direct {p0, p1, v0, v3, v6}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return v2

    :catchall_0
    move-exception v6

    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/DatagramChannelImpl;->receive0(Ljava/io/FileDescriptor;JIZ)I

    move-result v6

    if-lez v6, :cond_0

    add-int v0, p4, v6

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return v6
.end method

.method private send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v5, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v5

    return v5

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

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

    :cond_2
    if-gt v3, v1, :cond_3

    sub-int v4, v1, v3

    :cond_3
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1, v0, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v2

    if-lez v2, :cond_4

    add-int v5, v3, v2

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return v2

    :catchall_0
    move-exception v5

    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

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

    :cond_1
    if-gt v11, v2, :cond_3

    sub-int v8, v2, v11

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v5, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq v3, v5, :cond_4

    const/4 v4, 0x1

    :goto_2
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object v3, v0

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v6

    int-to-long v14, v11

    add-long/2addr v6, v14

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v10}, Lsun/nio/ch/DatagramChannelImpl;->send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    :try_end_0
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :goto_3
    if-lez v13, :cond_2

    add-int v3, v11, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    return v13

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v12

    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    throw v12

    :cond_5
    move v13, v8

    goto :goto_3
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    if-nez p1, :cond_4

    :try_start_5
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_3

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "0.0.0.0"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkListen(I)V

    :cond_2
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-static {v3, v7, v8, v9}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

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

    return-object p0

    :cond_3
    :try_start_8
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-nez v3, :cond_1

    new-instance v3, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v3}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpenAndUnconnected()V

    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-virtual {v3, v4, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-static {v4, v8, v9, v10}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v2

    if-gtz v2, :cond_1

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v7

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    const/4 v4, 0x1

    :try_start_5
    iput v4, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iput v4, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderPort:I

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

    return-object p0
.end method

.method public disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-virtual {v2, v3, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v3, v7, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect0(Ljava/io/FileDescriptor;Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    iput v3, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

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

    return-object p0

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

    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v6

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v5

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

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

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Connect already invoked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->close()V

    :cond_0
    return-void
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

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

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

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

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

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

    :cond_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_3
    :try_start_2
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-eq p1, v4, :cond_4

    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_5

    :cond_4
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_5
    :try_start_3
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_b

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface4(Ljava/io/FileDescriptor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    monitor-exit v5

    return-object v7

    :cond_6
    :try_start_4
    invoke-static {v0}, Lsun/nio/ch/Net;->inet4FromInt(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Unable to map address to interface"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_7
    monitor-exit v5

    return-object v3

    :cond_8
    :try_start_5
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface6(Ljava/io/FileDescriptor;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_9

    monitor-exit v5

    return-object v7

    :cond_9
    :try_start_6
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v3

    if-nez v3, :cond_a

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Unable to map index to interface"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    monitor-exit v5

    return-object v3

    :cond_b
    :try_start_7
    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v4, :cond_c

    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

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

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

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

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    sget-object v2, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    :cond_0
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_1
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

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

    const/4 v0, 0x0

    const/4 v3, 0x2

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

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

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    return v3

    :cond_3
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    :cond_4
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    const-wide/16 v6, 0x0

    :try_start_7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    if-gtz v0, :cond_6

    if-ne v0, v8, :cond_7

    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_0

    :cond_8
    monitor-exit v4

    return v1

    :catchall_2
    move-exception v1

    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    if-gtz v0, :cond_9

    if-ne v0, v8, :cond_a

    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_1

    :cond_b
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_0

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    :cond_3
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    :cond_4
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    :cond_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-wide v6

    const-wide/16 v2, 0x0

    :try_start_7
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

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

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    monitor-exit v4

    return-wide v6

    :catchall_2
    move-exception v2

    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

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

    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_c

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Read-only buffer"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v5, :cond_2

    return-object v12

    :cond_2
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v6, 0x0

    :try_start_2
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    :cond_3
    monitor-exit v8

    return-object v12

    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_a

    :cond_5
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v5, -0x3

    if-ne v2, v5, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    :cond_6
    if-ne v2, v13, :cond_12

    const-wide/16 v10, 0x0

    :try_start_4
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    if-gtz v2, :cond_7

    if-ne v2, v13, :cond_8

    :cond_7
    :goto_0
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_0

    :cond_9
    monitor-exit v8

    return-object v12

    :cond_a
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_b
    :goto_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, v0}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v5, -0x3

    if-ne v2, v5, :cond_c

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-nez v5, :cond_b

    :cond_c
    if-ne v2, v13, :cond_11

    if-eqz v0, :cond_d

    :try_start_6
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_d
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    if-gtz v2, :cond_e

    if-ne v2, v13, :cond_f

    :cond_e
    :goto_2
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_2

    :cond_10
    monitor-exit v8

    return-object v12

    :cond_11
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    check-cast v1, Ljava/net/InetSocketAddress;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-virtual {v4, v5, v9}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_12
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_13

    :try_start_a
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_13
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    if-gtz v2, :cond_14

    if-ne v2, v13, :cond_15

    :cond_14
    :goto_3
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    :catch_0
    move-exception v3

    :try_start_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_15
    move v6, v7

    goto :goto_3

    :cond_16
    monitor-exit v8

    return-object v5

    :catchall_1
    move-exception v5

    if-eqz v0, :cond_17

    :try_start_c
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_17
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    if-gtz v2, :cond_18

    if-ne v2, v13, :cond_19

    :cond_18
    :goto_4
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_4

    :cond_1a
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    invoke-static {p2}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Target address not resolved"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_1
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v8

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v4

    if-nez v4, :cond_8

    const-wide/16 v4, 0x0

    :try_start_7
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    :cond_4
    :try_start_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-virtual {v3, v4, v9}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v4}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Connected address not equal to target address"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

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

    :cond_7
    monitor-exit v7

    return v6

    :cond_8
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v8

    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    :cond_9
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v4, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    move-result v2

    const/4 v4, -0x3

    if-ne v2, v4, :cond_a

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_b

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_b
    :try_start_c
    monitor-exit v8

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result v4

    const-wide/16 v8, 0x0

    :try_start_d
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    if-gtz v2, :cond_c

    if-ne v2, v10, :cond_e

    :cond_c
    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    :catchall_2
    move-exception v4

    :try_start_e
    monitor-exit v8

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v4

    const-wide/16 v8, 0x0

    :try_start_f
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    if-gtz v2, :cond_d

    if-ne v2, v10, :cond_10

    :cond_d
    :goto_2
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_1

    :cond_f
    monitor-exit v7

    return v4

    :cond_10
    move v5, v6

    goto :goto_2

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

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

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

    :cond_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_3

    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    return-object p0

    :cond_3
    :try_start_1
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-eq p1, v5, :cond_4

    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_5

    :cond_4
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object p0

    :cond_5
    :try_start_2
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_a

    if-nez p2, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Cannot set IP_MULTICAST_IF to \'null\'"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_6
    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/net/NetworkInterface;

    move-object v2, v0

    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne v5, v7, :cond_8

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_7

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Network interface cannot be identified"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v1}, Lsun/nio/ch/Net;->setInterface6(Ljava/io/FileDescriptor;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v6

    return-object p0

    :cond_8
    :try_start_4
    invoke-static {v2}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Network interface not configured for IPv4"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-static {v3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    move-result v4

    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v4}, Lsun/nio/ch/Net;->setInterface4(Ljava/io/FileDescriptor;I)V

    goto :goto_0

    :cond_a
    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v5, :cond_b

    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    :cond_b
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v7, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return-object p0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public socket()Ljava/net/DatagramSocket;
    .locals 2

    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

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

    sget-object v0, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1

    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    move v1, p2

    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    return v4

    :cond_0
    and-int/lit8 v5, p1, 0x18

    if-eqz v5, :cond_2

    move v1, v0

    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_3

    or-int/lit8 v1, p2, 0x1

    :cond_3
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_4

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v5

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    return v3

    :cond_3
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    :cond_4
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v6, -0x1

    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    const-wide/16 v6, 0x0

    :try_start_7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    if-gtz v0, :cond_6

    if-ne v0, v8, :cond_7

    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_0

    :cond_8
    monitor-exit v4

    return v1

    :catchall_2
    move-exception v1

    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    if-gtz v0, :cond_9

    if-ne v0, v8, :cond_a

    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    goto :goto_1

    :cond_b
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_0

    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

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

    :cond_3
    const-wide/16 v2, 0x0

    monitor-exit v4

    return-wide v2

    :cond_4
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    :cond_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-wide v6

    const-wide/16 v2, 0x0

    :try_start_7
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

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

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    monitor-exit v4

    return-wide v6

    :catchall_2
    move-exception v2

    const-wide/16 v6, 0x0

    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

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

    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    if-nez v3, :cond_c

    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_b
    const/4 v3, 0x0

    goto :goto_1

    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method
