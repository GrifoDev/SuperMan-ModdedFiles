.class public Lsun/nio/ch/ServerSocketAdaptor;
.super Ljava/net/ServerSocket;
.source "ServerSocketAdaptor.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final ssc:Lsun/nio/ch/ServerSocketChannelImpl;

.field private volatile timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    iput-object p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    return-void
.end method

.method public static create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;
    .locals 2

    :try_start_0
    new-instance v1, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-direct {v1, p0}, Lsun/nio/ch/ServerSocketAdaptor;-><init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v9}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_0
    :try_start_1
    iget v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    if-nez v9, :cond_3

    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9

    :cond_2
    :try_start_2
    new-instance v9, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v9}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v8

    :try_start_3
    invoke-static {v8}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    sget-boolean v9, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_4
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    :try_start_6
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    monitor-exit v10

    return-object v9

    :cond_5
    :try_start_7
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-static {v9}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    move-result-object v2

    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/16 v11, 0x10

    invoke-virtual {v9, v2, v11}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    iget v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    int-to-long v6, v9

    :cond_6
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v9}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v9

    if-eqz v3, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_7
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    :cond_9
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v9

    if-eqz v3, :cond_b

    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_b
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_d
    monitor-exit v10

    return-object v9

    :cond_e
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-gtz v9, :cond_6

    new-instance v9, Ljava/net/SocketTimeoutException;

    invoke-direct {v9}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_f
    monitor-exit v10

    return-object v14
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/ServerSocketAdaptor;->bind(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v1, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public getReuseAddress()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-virtual {v1, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setReceiveBufferSize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size cannot be 0 or negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setReuseAddress(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iput p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ServerSocket[unbound]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServerSocket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
