.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected fd:Ljava/io/FileDescriptor;

.field protected localport:I

.field protected port:I

.field serverSocket:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 50
    iput-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getFD$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getLocalPort()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getPort()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method getServerSocket()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected abstract listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 317
    iput v1, p0, Ljava/net/SocketImpl;->port:I

    .line 318
    iput v1, p0, Ljava/net/SocketImpl;->localport:I

    .line 315
    return-void
.end method

.method protected abstract sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 361
    return-void
.end method

.method setServerSocket(Ljava/net/ServerSocket;)V
    .locals 0
    .param p1, "soc"    # Ljava/net/ServerSocket;

    .prologue
    .line 298
    iput-object p1, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 297
    return-void
.end method

.method setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "soc"    # Ljava/net/Socket;

    .prologue
    .line 290
    iput-object p1, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 289
    return-void
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected supportsUrgentData()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, ",port="

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, ",localport="

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, "]"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
