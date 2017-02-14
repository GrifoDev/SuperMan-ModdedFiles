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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-direct {p0, p4}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    return-void
.end method

.method constructor <init>(IILsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-direct {p0, p3}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLContextImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    iput-byte v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    iput-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-direct {p0, p1}, Lsun/security/ssl/SSLServerSocketImpl;->initServer(Lsun/security/ssl/SSLContextImpl;)V

    return-void
.end method

.method private initServer(Lsun/security/ssl/SSLContextImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string/jumbo v1, "No Authentication context given"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultCipherSuiteList(Z)Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

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

    new-instance v0, Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-boolean v2, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iget-byte v4, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    iget-boolean v5, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    iget-object v6, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v7, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    iget-object v8, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-direct/range {v0 .. v8}, Lsun/security/ssl/SSLSocketImpl;-><init>(Lsun/security/ssl/SSLContextImpl;ZLsun/security/ssl/CipherSuiteList;BZLsun/security/ssl/ProtocolList;Ljava/lang/String;Ljava/security/AlgorithmConstraints;)V

    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->doneConnect()V

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    return v0
.end method

.method public declared-synchronized getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

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

    monitor-enter p0

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

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    iget-object v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSupportedCipherSuiteList()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/CipherSuiteList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLContextImpl;->getSuportedProtocolList()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/ssl/ProtocolList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

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

    const/4 v0, 0x1

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

    iput-boolean p1, p0, Lsun/security/ssl/SSLServerSocketImpl;->enableSessionCreation:Z

    return-void
.end method

.method public declared-synchronized setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->checkedEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/security/ssl/ProtocolList;

    invoke-direct {v0, p1}, Lsun/security/ssl/ProtocolList;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLServerSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->identificationProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseClientMode(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    if-eq v3, v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, v3}, Lsun/security/ssl/SSLContextImpl;->isDefaultProtocolList(Lsun/security/ssl/ProtocolList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lsun/security/ssl/SSLServerSocketImpl;->sslContext:Lsun/security/ssl/SSLContextImpl;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lsun/security/ssl/SSLContextImpl;->getDefaultProtocolList(Z)Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    :cond_0
    if-eqz p1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lsun/security/ssl/SSLServerSocketImpl;->useServerMode:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lsun/security/ssl/SSLServerSocketImpl;->doClientAuth:B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
