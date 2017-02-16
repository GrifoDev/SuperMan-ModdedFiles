.class public Lsun/nio/ch/DatagramSocketAdaptor;
.super Ljava/net/DatagramSocket;
.source "DatagramSocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/DatagramSocketAdaptor$1;
    }
.end annotation


# static fields
.field private static final dummyDatagramSocket:Ljava/net/DatagramSocketImpl;


# instance fields
.field private final dc:Lsun/nio/ch/DatagramChannelImpl;

.field private volatile timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lsun/nio/ch/DatagramSocketAdaptor$1;

    invoke-direct {v0}, Lsun/nio/ch/DatagramSocketAdaptor$1;-><init>()V

    .line 384
    sput-object v0, Lsun/nio/ch/DatagramSocketAdaptor;->dummyDatagramSocket:Ljava/net/DatagramSocketImpl;

    .line 41
    return-void
.end method

.method private constructor <init>(Lsun/nio/ch/DatagramChannelImpl;)V
    .locals 1
    .param p1, "dc"    # Lsun/nio/ch/DatagramChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lsun/nio/ch/DatagramSocketAdaptor;->dummyDatagramSocket:Ljava/net/DatagramSocketImpl;

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    .line 58
    iput-object p1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    .line 52
    return-void
.end method

.method private connectInternal(Ljava/net/SocketAddress;)V
    .locals 6
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 73
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 74
    .local v1, "port":I
    if-ltz v1, :cond_0

    const v3, 0xffff

    if-le v1, v3, :cond_1

    .line 75
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_1
    if-nez p1, :cond_2

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "connect: null address"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    return-void

    .line 81
    :cond_3
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3, p1}, Lsun/nio/ch/DatagramChannelImpl;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;
    .locals 2
    .param p0, "dc"    # Lsun/nio/ch/DatagramChannelImpl;

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lsun/nio/ch/DatagramSocketAdaptor;

    invoke-direct {v1, p0}, Lsun/nio/ch/DatagramSocketAdaptor;-><init>(Lsun/nio/ch/DatagramChannelImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getBooleanOption(Ljava/net/SocketOption;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 299
    const/4 v1, 0x0

    return v1
.end method

.method private getIntOption(Ljava/net/SocketOption;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/DatagramChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 308
    const/4 v1, -0x1

    return v1
.end method

.method private receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 11
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 175
    iget v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    if-nez v8, :cond_0

    .line 176
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v8

    return-object v8

    .line 180
    :cond_0
    const/4 v3, 0x0

    .line 181
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v1, 0x0

    .line 182
    .local v1, "sel":Ljava/nio/channels/Selector;
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8, v9}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 186
    :try_start_0
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "sender":Ljava/net/SocketAddress;
    if-eqz v2, :cond_2

    .line 209
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 210
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8, v10}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 187
    :cond_1
    return-object v2

    .line 188
    :cond_2
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-static {v8}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    move-result-object v1

    .line 189
    .local v1, "sel":Ljava/nio/channels/Selector;
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 190
    .local v3, "sk":Ljava/nio/channels/SelectionKey;
    iget v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    int-to-long v6, v8

    .line 192
    .local v6, "to":J
    :cond_3
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_7

    .line 193
    new-instance v8, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v8}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .end local v1    # "sel":Ljava/nio/channels/Selector;
    .end local v2    # "sender":Ljava/net/SocketAddress;
    .end local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v6    # "to":J
    :catchall_0
    move-exception v8

    .line 207
    if-eqz v3, :cond_4

    .line 208
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 209
    :cond_4
    iget-object v9, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 210
    iget-object v9, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v9, v10}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 211
    :cond_5
    if-eqz v1, :cond_6

    .line 212
    invoke-static {v1}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    .line 206
    :cond_6
    throw v8

    .line 194
    .restart local v1    # "sel":Ljava/nio/channels/Selector;
    .restart local v2    # "sender":Ljava/net/SocketAddress;
    .restart local v3    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v6    # "to":J
    :cond_7
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 195
    .local v4, "st":J
    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    .line 196
    .local v0, "ns":I
    if-lez v0, :cond_b

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 197
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_b

    .line 207
    if-eqz v3, :cond_8

    .line 208
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 209
    :cond_8
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 210
    iget-object v8, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v8, v10}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 211
    :cond_9
    if-eqz v1, :cond_a

    .line 212
    invoke-static {v1}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    .line 198
    :cond_a
    return-object v2

    .line 200
    :cond_b
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    sub-long/2addr v6, v8

    .line 202
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    .line 203
    new-instance v8, Ljava/net/SocketTimeoutException;

    invoke-direct {v8}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private setBooleanOption(Ljava/net/SocketOption;Z)V
    .locals 3
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setIntOption(Ljava/net/SocketOption;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .end local p1    # "local":Ljava/net/SocketAddress;
    .local v0, "local":Ljava/net/SocketAddress;
    move-object p1, v0

    .line 91
    .end local v0    # "local":Ljava/net/SocketAddress;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v2, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 99
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v1}, Lsun/nio/ch/DatagramSocketAdaptor;->connectInternal(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .local v0, "x":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->connectInternal(Ljava/net/SocketAddress;)V

    .line 105
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBroadcast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    return-object v0
.end method

.method public final getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    iget-object v0, v0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 236
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    return-object v5

    .line 238
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 239
    .local v0, "local":Ljava/net/SocketAddress;
    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/net/InetSocketAddress;

    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-direct {v0, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 241
    .restart local v0    # "local":Ljava/net/SocketAddress;
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 242
    .local v1, "result":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 243
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2

    .line 245
    :try_start_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_2
    return-object v1

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "x":Ljava/lang/SecurityException;
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4
.end method

.method public getLocalPort()I
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const/4 v2, -0x1

    return v2

    .line 257
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/DatagramChannelImpl;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 258
    .local v0, "local":Ljava/net/SocketAddress;
    if-eqz v0, :cond_1

    .line 259
    check-cast v0, Ljava/net/InetSocketAddress;

    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 261
    :catch_0
    move-exception v1

    .line 263
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 271
    iget v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

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

.method public isConnected()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 218
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 221
    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 223
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v5

    .line 224
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    .line 222
    invoke-static {v3, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lsun/nio/ch/DatagramSocketAdaptor;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    .line 226
    .local v1, "sender":Ljava/net/SocketAddress;
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 227
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setLength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "sender":Ljava/net/SocketAddress;
    :goto_0
    monitor-exit v4

    .line 216
    return-void

    .line 221
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p1

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "x":Ljava/io/IOException;
    :try_start_5
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 141
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 144
    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 146
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v5

    .line 147
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    .line 145
    invoke-static {v3, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_1

    .line 153
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 152
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 154
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 155
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 156
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :goto_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_1
    monitor-exit v4

    .line 139
    return-void

    .line 159
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_4
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 144
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p1

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "x":Ljava/io/IOException;
    :try_start_6
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 163
    .end local v2    # "x":Ljava/io/IOException;
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_7
    iget-object v3, p0, Lsun/nio/ch/DatagramSocketAdaptor;->dc:Lsun/nio/ch/DatagramChannelImpl;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setBroadcast(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 341
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 323
    if-gtz p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 322
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 332
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 313
    if-gtz p1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 312
    return-void
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
    .line 267
    iput p1, p0, Lsun/nio/ch/DatagramSocketAdaptor;->timeout:I

    .line 266
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 350
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/DatagramSocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 349
    return-void
.end method
