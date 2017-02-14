.class public Lsun/nio/ch/SocketAdaptor;
.super Ljava/net/Socket;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final sc:Lsun/nio/ch/SocketChannelImpl;

.field private socketInputStream:Ljava/io/InputStream;

.field private volatile timeout:I


# direct methods
.method static synthetic -get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/SocketAdaptor;)I
    .locals 1

    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/SocketAdaptor;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Lsun/nio/ch/SocketChannelImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Lsun/nio/ch/FileDescriptorHolderSocketImpl;

    invoke-virtual {p1}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/ch/FileDescriptorHolderSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-void
.end method

.method public static create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;
    .locals 3

    :try_start_0
    new-instance v1, Lsun/nio/ch/SocketAdaptor;

    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor;-><init>(Lsun/nio/ch/SocketChannelImpl;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    const-string/jumbo v2, "Should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

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

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

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

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

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

.method private setBooleanOption(Ljava/net/SocketOption;Z)V
    .locals 3
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

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setIntOption(Ljava/net/SocketOption;I)V
    .locals 3
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

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
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

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/SocketAdaptor;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "connect: The address can\'t be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    if-gez p2, :cond_1

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "connect: timeout can\'t be negative"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v12}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_2
    if-nez p2, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v13

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v11

    const/4 v12, 0x1

    :try_start_3
    invoke-static {v11, v12}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v13

    return-void

    :cond_4
    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v12

    if-eqz v12, :cond_6

    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    monitor-exit v13

    return-void

    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {v12}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/16 v14, 0x8

    invoke-virtual {v12, v4, v14}, Lsun/nio/ch/SocketChannelImpl;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v5

    move/from16 v0, p2

    int-to-long v8, v0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v12

    if-nez v12, :cond_b

    new-instance v12, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v12}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v12

    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v14}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v4}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    :cond_a
    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->finishConnect()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v5, :cond_c

    :try_start_a
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_d
    if-eqz v4, :cond_3

    invoke-static {v4}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_e
    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v14

    sub-long/2addr v14, v6

    sub-long/2addr v8, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v8, v14

    if-gtz v12, :cond_7

    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v12}, Lsun/nio/ch/SocketChannelImpl;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_2
    :try_start_d
    new-instance v12, Ljava/net/SocketTimeoutException;

    invoke-direct {v12}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket input is shutdown"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_3

    :try_start_0
    new-instance v1, Lsun/nio/ch/SocketAdaptor$1;

    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor$1;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 3

    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPort()I
    .locals 2

    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is not connected"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket output is shutdown"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lsun/nio/ch/SocketAdaptor$2;

    invoke-direct {v2, p0}, Lsun/nio/ch/SocketAdaptor$2;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method public getPort()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

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

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

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

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

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

    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

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

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

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

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOutputShutdown()Z
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendUrgentData(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    int-to-byte v4, p1

    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(B)I

    move-result v0

    sget-boolean v3, Lsun/nio/ch/SocketAdaptor;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-ne v0, v1, :cond_1

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p2, -0x1

    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p2}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->shutdownInput()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->shutdownOutput()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Socket[unconnected]"

    return-object v0
.end method
