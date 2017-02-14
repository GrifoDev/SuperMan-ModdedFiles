.class public abstract Ljavax/net/ssl/SSLContextSpi;
.super Ljava/lang/Object;
.source "SSLContextSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultSocket()Ljavax/net/ssl/SSLSocket;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Could not obtain parameters"

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected abstract engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;->getDefaultSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    return-object v1
.end method

.method protected abstract engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
.end method

.method protected abstract engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method protected engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;->getDefaultSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method
