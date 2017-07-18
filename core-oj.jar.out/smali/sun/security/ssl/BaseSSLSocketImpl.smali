.class abstract Lsun/security/ssl/BaseSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "BaseSSLSocketImpl.java"


# static fields
.field private static final PROP_NAME:Ljava/lang/String; = "com.sun.net.ssl.requireCloseNotify"

.field static final requireCloseNotify:Z


# instance fields
.field final self:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "com.sun.net.ssl.requireCloseNotify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/BaseSSLSocketImpl;->requireCloseNotify:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    iput-object p0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Underlying socket should already be connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v2, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->finalize()V

    throw v2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPort()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public final getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoTimeout()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public final isBound()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public final sendUrgentData(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "This method is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    goto :goto_0
.end method

.method public final setOOBInline(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "This method is ineffective, since sending urgent data is not supported by SSLSockets"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    goto :goto_0
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_0
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    goto :goto_0
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto :goto_0
.end method

.method public final setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    goto :goto_0
.end method

.method public final setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/BaseSSLSocketImpl;->self:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    goto :goto_0
.end method

.method public final shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The method shutdownInput() is not supported in SSLSocket"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The method shutdownOutput() is not supported in SSLSocket"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
