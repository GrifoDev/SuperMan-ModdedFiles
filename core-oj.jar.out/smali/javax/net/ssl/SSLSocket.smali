.class public abstract Ljavax/net/ssl/SSLSocket;
.super Ljava/net/Socket;
.source "SSLSocket.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 879
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 905
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 962
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 930
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 993
    return-void
.end method


# virtual methods
.method public abstract addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 1146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1345
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 1346
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1349
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    .line 1353
    :cond_0
    :goto_0
    return-object v0

    .line 1350
    :cond_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
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

    .line 1379
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1383
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 1384
    if-eqz v0, :cond_1

    .line 1385
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1387
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1388
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 1377
    :goto_0
    return-void

    .line 1389
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1390
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    goto :goto_0

    .line 1392
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public abstract startHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
