.class public Landroid/net/LocalSocket;
.super Ljava/lang/Object;
.source "LocalSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final SOCKET_DGRAM:I = 0x1

.field public static final SOCKET_SEQPACKET:I = 0x3

.field public static final SOCKET_STREAM:I = 0x2

.field static final SOCKET_UNKNOWN:I


# instance fields
.field private final impl:Landroid/net/LocalSocketImpl;

.field private volatile implCreated:Z

.field private isBound:Z

.field private isConnected:Z

.field private localAddress:Landroid/net/LocalSocketAddress;

.field private final sockType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/LocalSocket;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/LocalSocketImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    iput p2, p0, Landroid/net/LocalSocket;->sockType:I

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    return-void
.end method

.method private static createConnectedLocalSocket(Landroid/net/LocalSocketImpl;I)Landroid/net/LocalSocket;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0, p0, p1}, Landroid/net/LocalSocket;-><init>(Landroid/net/LocalSocketImpl;I)V

    iput-boolean v1, v0, Landroid/net/LocalSocket;->isConnected:Z

    iput-boolean v1, v0, Landroid/net/LocalSocket;->isBound:Z

    iput-boolean v1, v0, Landroid/net/LocalSocket;->implCreated:Z

    return-object v0
.end method

.method public static createConnectedLocalSocket(Ljava/io/FileDescriptor;)Landroid/net/LocalSocket;
    .locals 2

    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Landroid/net/LocalSocketImpl;I)Landroid/net/LocalSocket;

    move-result-object v0

    return-object v0
.end method

.method static createLocalSocketForAccept(Landroid/net/LocalSocketImpl;)Landroid/net/LocalSocket;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/LocalSocket;->createConnectedLocalSocket(Landroid/net/LocalSocketImpl;I)Landroid/net/LocalSocket;

    move-result-object v0

    return-object v0
.end method

.method private implCreateIfNeeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    iget v1, p0, Landroid/net/LocalSocket;->sockType:I

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->create(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/net/LocalSocket;->implCreated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Landroid/net/LocalSocket;->implCreated:Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "already bound"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    iget-object v1, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public connect(Landroid/net/LocalSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/LocalSocketImpl;->connect(Landroid/net/LocalSocketAddress;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public connect(Landroid/net/LocalSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isBound()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/LocalSocket;->isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInputShutdown()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 1

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Landroid/net/LocalSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownInput()V

    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/LocalSocket;->implCreateIfNeeded()V

    iget-object v0, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->shutdownOutput()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " impl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LocalSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
