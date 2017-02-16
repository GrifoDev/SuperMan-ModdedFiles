.class final Lsun/security/ssl/SSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "SSLServerSocketImpl.java"


# instance fields
.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private checkedEnabled:Z

.field private doClientAuth:B

.field private enableSessionCreation:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field private identificationProtocol:Ljava/lang/String;

.field private sslContext:Lsun/security/ssl/SSLContextImpl;

.field private useServerMode:Z


# direct methods
.method constructor <init>(IILjava/net/InetAddress;Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 72
    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    .line 75
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    .line 78
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    .line 81
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 84
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 87
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    .line 90
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 135
    invoke-direct {p0, p4}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    .line 132
    return-void
.end method

.method constructor <init>(IILsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 72
    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    .line 75
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    .line 78
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    .line 81
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 84
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 87
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    .line 90
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 108
    invoke-direct {p0, p3}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    .line 105
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 72
    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    .line 75
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    .line 78
    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    .line 81
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 84
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 87
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    .line 90
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 144
    invoke-direct {p0, p1}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    .line 142
    return-void
.end method

.method private initServer(Lsun/security/ssl/SSLContextImpl;)V
    .locals 2
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string/jumbo v1, "No Authentication context given"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 156
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 157
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 151
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    .line 314
    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iget-byte v4, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    iget-boolean v5, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    .line 315
    iget-object v6, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v7, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    iget-object v8, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 313
    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;ZLsun/security/ssl/CipherSuiteList;BZLsun/security/ssl/ProtocolList;Ljava/lang/String;Ljava/security/AlgorithmConstraints;)V

    .line 317
    .local v0, "s":Lsun/security/ssl/SSLSocketImpl;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 318
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    .line 319
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    return v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNeedClientAuth()Z
    .locals 2

    .prologue
    .line 226
    iget-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    .prologue
    monitor-enter p0

    .line 287
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 290
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 293
    return-object v0

    .end local v0    # "params":Ljavax/net/ssl/SSLParameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWantClientAuth()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 239
    iget-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    .line 271
    return-void
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 190
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 209
    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 208
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    const/4 v0, 0x2

    .line 221
    :goto_0
    iput-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    .line 220
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1
    .param p1, "params"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLServerSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 303
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 299
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseClientMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    iget-boolean v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    if-eq v3, v0, :cond_0

    .line 255
    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v0

    .line 254
    if-eqz v0, :cond_0

    .line 256
    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 259
    :cond_0
    if-eqz p1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    .line 248
    return-void

    :cond_1
    move v0, v2

    .line 254
    goto :goto_0

    :cond_2
    move v0, v2

    .line 256
    goto :goto_1

    :cond_3
    move v1, v2

    .line 259
    goto :goto_2
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 234
    :goto_0
    iput-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    .line 233
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[SSL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
