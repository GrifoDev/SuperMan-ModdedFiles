.class Landroid/net/LocalSocketImpl;
.super Ljava/lang/Object;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LocalSocketImpl$SocketInputStream;,
        Landroid/net/LocalSocketImpl$SocketOutputStream;
    }
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;

.field private fis:Landroid/net/LocalSocketImpl$SocketInputStream;

.field private fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

.field inboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private mFdCreatedInternally:Z

.field outboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private readMonitor:Ljava/lang/Object;

.field private writeMonitor:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private native bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static javaSoToOsOpt(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget v0, Landroid/system/OsConstants;->SO_SNDBUF:I

    return v0

    :sswitch_1
    sget v0, Landroid/system/OsConstants;->SO_RCVBUF:I

    return v0

    :sswitch_2
    sget v0, Landroid/system/OsConstants;->SO_REUSEADDR:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_1
    .end sparse-switch
.end method

.method private native read_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readba_native([BIILjava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native write_native(ILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeba_native([BIILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected accept(Landroid/net/LocalSocketImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected connect(Landroid/net/LocalSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    return-void
.end method

.method public create(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "LocalSocketImpl already has an fd"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "unknown sockType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    :goto_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_1
    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    goto :goto_0

    :pswitch_2
    sget v1, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    if-nez v0, :cond_1

    new-instance v0, Landroid/net/LocalSocketImpl$SocketInputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketInputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "socket not created"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :try_start_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    :sswitch_0
    :try_start_1
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v7, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object v3

    invoke-virtual {v3}, Landroid/system/StructTimeval;->toMillis()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    return-object v4

    :sswitch_1
    invoke-static {p1}, Landroid/net/LocalSocketImpl;->javaSoToOsOpt(I)I

    move-result v2

    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    invoke-static {v5, v6, v2}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v7, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object v1

    invoke-virtual {v1}, Landroid/system/StructLinger;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget v5, v1, Landroid/system/StructLinger;->l_linger:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v6, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v7, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_1
        0x80 -> :sswitch_2
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1006 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    if-nez v0, :cond_1

    new-instance v0, Landroid/net/LocalSocketImpl$SocketOutputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketOutputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public getSockAddress()Landroid/net/LocalSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected listen(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected sendUrgentData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not impled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 2

    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->outboundFileDescriptors:[Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "socket not created"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    instance-of v6, p2, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :try_start_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v6

    throw v6

    :cond_1
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bad value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    :try_start_1
    new-instance v3, Landroid/system/StructLinger;

    invoke-direct {v3, v0, v2}, Landroid/system/StructLinger;-><init>(II)V

    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v8, Landroid/system/OsConstants;->SO_LINGER:I

    invoke-static {v6, v7, v8, v3}, Landroid/system/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    :goto_1
    return-void

    :sswitch_1
    int-to-long v6, v2

    invoke-static {v6, v7}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v5

    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v8, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v6, v7, v8, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v8, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v6, v7, v8, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    goto :goto_1

    :sswitch_2
    invoke-static {p1}, Landroid/net/LocalSocketImpl;->javaSoToOsOpt(I)I

    move-result v4

    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SOL_SOCKET:I

    invoke-static {v6, v7, v4, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_1

    :sswitch_3
    iget-object v6, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    sget v8, Landroid/system/OsConstants;->TCP_NODELAY:I

    invoke-static {v6, v7, v8, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_2
        0x80 -> :sswitch_0
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_2
        0x1006 -> :sswitch_1
    .end sparse-switch
.end method

.method protected shutdownInput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SHUT_RD:I

    invoke-static {v1, v2}, Landroid/system/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected shutdownOutput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SHUT_WR:I

    invoke-static {v1, v2}, Landroid/system/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected supportsUrgentData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
