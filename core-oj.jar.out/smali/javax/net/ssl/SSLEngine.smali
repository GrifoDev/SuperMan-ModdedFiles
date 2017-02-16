.class public abstract Ljavax/net/ssl/SSLEngine;
.super Ljava/lang/Object;
.source "SSLEngine.java"


# instance fields
.field private peerHost:Ljava/lang/String;

.field private peerPort:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    .line 1029
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "peerHost"    # Ljava/lang/String;
    .param p2, "peerPort"    # I

    .prologue
    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    .line 1052
    iput-object p1, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    .line 1053
    iput p2, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    .line 1051
    return-void
.end method


# virtual methods
.method public abstract beginHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract closeInbound()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract closeOutbound()V
.end method

.method public abstract getDelegatedTask()Ljava/lang/Runnable;
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
    .line 1653
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1847
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    .line 1848
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1851
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    .line 1855
    :cond_0
    :goto_0
    return-object v0

    .line 1852
    :cond_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
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

.method public abstract isInboundDone()Z
.end method

.method public abstract isOutboundDone()Z
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

    .line 1881
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1883
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1885
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 1886
    if-eqz v0, :cond_1

    .line 1887
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1889
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1890
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 1879
    :goto_0
    return-void

    .line 1891
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1892
    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    goto :goto_0

    .line 1894
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1270
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1307
    if-nez p2, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dsts == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1115
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, v1, v2, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1152
    if-nez p1, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
