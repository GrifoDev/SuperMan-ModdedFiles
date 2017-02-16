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

    .prologue
    const-class v0, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    .line 40
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    .locals 1
    .param p1, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    .line 62
    iput-object p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    .line 60
    return-void
.end method

.method public static create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;
    .locals 2
    .param p0, "ssc"    # Lsun/nio/ch/ServerSocketChannelImpl;

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lsun/nio/ch/ServerSocketAdaptor;

    invoke-direct {v1, p0}, Lsun/nio/ch/ServerSocketAdaptor;-><init>(Lsun/nio/ch/ServerSocketChannelImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "x":Ljava/io/IOException;
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

    .prologue
    const/4 v14, 0x0

    .line 95
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 96
    :try_start_0
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v9

    if-nez v9, :cond_0

    .line 97
    new-instance v9, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v9}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 99
    :cond_0
    :try_start_1
    iget v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    if-nez v9, :cond_3

    .line 100
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 101
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_1

    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    monitor-exit v10

    return-object v9

    .line 102
    :cond_2
    :try_start_2
    new-instance v9, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v9}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v8

    .line 140
    .local v8, "x":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v8}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    .line 141
    sget-boolean v9, Lsun/nio/ch/ServerSocketAdaptor;->-assertionsDisabled:Z

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .end local v8    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    .line 108
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v2, 0x0

    .line 109
    .local v2, "sel":Ljava/nio/channels/Selector;
    :try_start_4
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :try_start_5
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    if-eqz v1, :cond_5

    .line 113
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    .line 133
    :try_start_6
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 134
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    monitor-exit v10

    .line 113
    return-object v9

    .line 114
    :cond_5
    :try_start_7
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-static {v9}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    move-result-object v2

    .line 115
    .local v2, "sel":Ljava/nio/channels/Selector;
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/16 v11, 0x10

    invoke-virtual {v9, v2, v11}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 116
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    iget v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    int-to-long v6, v9

    .line 118
    .local v6, "to":J
    :cond_6
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v9

    if-nez v9, :cond_a

    .line 119
    new-instance v9, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v9}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 130
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "sel":Ljava/nio/channels/Selector;
    .end local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v6    # "to":J
    :catchall_1
    move-exception v9

    .line 131
    if-eqz v3, :cond_7

    .line 132
    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 133
    :cond_7
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 134
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 135
    :cond_8
    if-eqz v2, :cond_9

    .line 136
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    .line 130
    :cond_9
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 120
    .restart local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .restart local v2    # "sel":Ljava/nio/channels/Selector;
    .restart local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v6    # "to":J
    :cond_a
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 121
    .local v4, "st":J
    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    .line 122
    .local v0, "ns":I
    if-lez v0, :cond_e

    .line 123
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v9

    .line 122
    if-eqz v9, :cond_e

    .line 123
    iget-object v9, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v9}, Lsun/nio/ch/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 124
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v9

    .line 131
    if-eqz v3, :cond_b

    .line 132
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 133
    :cond_b
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v11}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 134
    iget-object v11, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 135
    :cond_c
    if-eqz v2, :cond_d

    .line 136
    invoke-static {v2}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_d
    monitor-exit v10

    .line 124
    return-object v9

    .line 125
    :cond_e
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    sub-long/2addr v6, v12

    .line 127
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-gtz v9, :cond_6

    .line 128
    new-instance v9, Ljava/net/SocketTimeoutException;

    invoke-direct {v9}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local v0    # "ns":I
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "sel":Ljava/nio/channels/Selector;
    .end local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v4    # "st":J
    .end local v6    # "to":J
    .restart local v8    # "x":Ljava/lang/Exception;
    :cond_f
    monitor-exit v10

    .line 142
    return-object v14
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/ServerSocketAdaptor;->bind(Ljava/net/SocketAddress;I)V

    .line 66
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 2
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljava/net/InetSocketAddress;

    .end local p1    # "local":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 74
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v1, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "x":Ljava/lang/Exception;
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

    .prologue
    .line 148
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 147
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 83
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

    .prologue
    .line 88
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, -0x1

    return v0

    .line 90
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

    .prologue
    .line 209
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

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 212
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

    .prologue
    .line 181
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

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 184
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

    .prologue
    .line 168
    iget v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 160
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
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 198
    if-gtz p1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size cannot be 0 or negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setReuseAddress(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketAdaptor;->ssc:Lsun/nio/ch/ServerSocketChannelImpl;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 164
    iput p1, p0, Lsun/nio/ch/ServerSocketAdaptor;->timeout:I

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v0, "ServerSocket[unbound]"

    return-object v0

    .line 191
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

    .line 193
    const-string/jumbo v1, ",localport="

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketAdaptor;->getLocalPort()I

    move-result v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "]"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
