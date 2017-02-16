.class public abstract Ljavax/net/ssl/SSLServerSocket;
.super Ljava/net/ServerSocket;
.source "SSLServerSocket.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/net/ServerSocket;-><init>()V

    .line 70
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 99
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    .line 135
    return-void
.end method

.method protected constructor <init>(IILjava/net/InetAddress;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 180
    return-void
.end method


# virtual methods
.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 469
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 471
    .local v0, "parameters":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    .line 479
    :cond_0
    :goto_0
    return-object v0

    .line 475
    :cond_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 3
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    const/4 v2, 0x1

    .line 508
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 513
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 518
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 506
    :goto_0
    return-void

    .line 520
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    goto :goto_0

    .line 523
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method
