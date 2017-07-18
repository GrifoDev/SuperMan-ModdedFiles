.class Ljava/net/SocketInputStream;
.super Ljava/io/FileInputStream;
.source "SocketInputStream.java"


# instance fields
.field private closing:Z

.field private eof:Z

.field private impl:Ljava/net/AbstractPlainSocketImpl;

.field private socket:Ljava/net/Socket;

.field private temp:[B


# direct methods
.method constructor <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iput-object v1, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    iput-object p1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    return-void
.end method

.method private native socketRead0(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    return-void

    :cond_2
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v1, :cond_0

    return v3

    :cond_0
    new-array v1, v4, [B

    iput-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    invoke-virtual {p0, v1, v2, v4}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->getTimeout()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/net/SocketInputStream;->read([BIII)I

    move-result v0

    return v0
.end method

.method read([BIII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "Connection reset"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez p3, :cond_2

    if-gez p2, :cond_3

    :cond_2
    if-nez p3, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_3
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_2

    const/4 v8, 0x0

    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;

    move-result-object v11

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v1

    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I
    :try_end_0
    .catch Lsun/net/ConnectionResetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-lez v9, :cond_6

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    if-lez v9, :cond_5

    move v0, v9

    :goto_0
    int-to-long v6, v0

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    return v9

    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    if-lez v9, :cond_7

    move v0, v9

    :goto_1
    int-to-long v6, v0

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    :goto_2
    if-eqz v8, :cond_a

    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;

    move-result-object v11

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I
    :try_end_1
    .catch Lsun/net/ConnectionResetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-lez v9, :cond_9

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    if-lez v9, :cond_8

    move v0, v9

    :goto_3
    int-to-long v6, v0

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    return v9

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v10

    const/4 v8, 0x1

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    const/4 v0, 0x0

    int-to-long v6, v0

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v2, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v2, Ljava/net/AbstractPlainSocketImpl;->port:I

    const/4 v2, 0x0

    int-to-long v6, v2

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    if-lez v9, :cond_b

    move v0, v9

    :goto_4
    int-to-long v6, v0

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    :cond_a
    :goto_5
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v10

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v0, Ljava/net/AbstractPlainSocketImpl;->port:I

    if-lez v9, :cond_c

    move v0, v9

    :goto_6
    int-to-long v6, v0

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget-object v3, v2, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    iget v4, v2, Ljava/net/AbstractPlainSocketImpl;->port:I

    if-lez v9, :cond_d

    :goto_7
    int-to-long v6, v9

    move-object v2, v11

    move/from16 v5, p4

    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    throw v0

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V

    :cond_f
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "Connection reset"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    const/4 v0, -0x1

    return v0
.end method

.method setEOF(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/net/SocketInputStream;->eof:Z

    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    return-wide v8

    :cond_0
    move-wide v2, p1

    const-wide/16 v6, 0x400

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    new-array v1, v0, [B

    :goto_0
    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    int-to-long v6, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0, v1, v10, v5}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    sub-long v6, p1, v2

    return-wide v6

    :cond_2
    int-to-long v6, v4

    sub-long/2addr v2, v6

    goto :goto_0
.end method
