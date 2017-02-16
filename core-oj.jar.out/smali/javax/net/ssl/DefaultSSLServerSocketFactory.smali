.class Ljavax/net/ssl/DefaultSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactory.java"


# instance fields
.field private final reason:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 186
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 187
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    .line 186
    return-void
.end method

.method private throwException()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->reason:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 191
    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "ifAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->throwException()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
