.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field private static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# instance fields
.field private mAddr:Landroid/system/NetlinkSocketAddress;

.field private final mDescriptor:Ljava/io/FileDescriptor;

.field private mLastRecvTimeoutMs:J

.field private mLastSendTimeoutMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p1}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v4, 0x10000

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method private checkTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative timeouts not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static sendOneShotKernelMessage(I[B)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string/jumbo v13, "Error in NetlinkSocket.sendOneShotKernelMessage"

    const/16 v18, 0x0

    const/16 v16, 0x0

    :try_start_0
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    move/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v8, 0x12c

    :try_start_1
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {v10}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    instance-of v3, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_1

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v3

    iget v15, v3, Landroid/net/netlink/StructNlMsgErr;->error:I

    if-eqz v15, :cond_3

    const-string/jumbo v3, "NetlinkSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual/range {v17 .. v17}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    if-eqz v4, :cond_6

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception v11

    const-string/jumbo v3, "NetlinkSocket"

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/system/ErrnoException;

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    sget v5, Landroid/system/OsConstants;->ETIMEDOUT:I

    invoke-direct {v3, v4, v5, v11}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    :cond_1
    if-nez v17, :cond_2

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "raw bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    const-string/jumbo v3, "NetlinkSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/system/ErrnoException;

    sget v4, Landroid/system/OsConstants;->EPROTO:I

    invoke-direct {v3, v14, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3

    :catchall_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_1

    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v14

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_4
    if-eqz v18, :cond_7

    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v12

    const-string/jumbo v3, "NetlinkSocket"

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/system/ErrnoException;

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    sget v5, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v3, v4, v5, v12}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v18

    goto :goto_4

    :catch_4
    move-exception v5

    if-nez v4, :cond_5

    move-object v4, v5

    goto/16 :goto_2

    :cond_5
    if-eq v4, v5, :cond_0

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_6
    throw v3
    :try_end_8
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    return-void

    :catchall_2
    move-exception v3

    move-object/from16 v2, v16

    move-object/from16 v4, v18

    goto/16 :goto_1

    :catch_5
    move-exception v3

    move-object/from16 v2, v16

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Landroid/system/NetlinkSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public connectTo(Landroid/system/NetlinkSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public connectToKernel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v0, v1, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/net/netlink/NetlinkSocket;->connectTo(Landroid/system/NetlinkSocketAddress;)V

    return-void
.end method

.method public getLocalAddress()Landroid/system/NetlinkSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Landroid/system/NetlinkSocketAddress;

    return-object v0
.end method

.method public recvMessage()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/16 v2, 0x2000

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recvMessage(IJ)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    iget-object v3, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    monitor-enter v3

    :try_start_0
    iget-wide v4, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J

    cmp-long v2, v4, p2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iput-wide p2, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    if-ne v1, p1, :cond_1

    const-string/jumbo v2, "NetlinkSocket"

    const-string/jumbo v3, "maximum read"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public recvMessage(J)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage([BII)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    move-result v0

    return v0
.end method

.method public sendMessage([BIIJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0, p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iput-wide p4, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-ne p3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
