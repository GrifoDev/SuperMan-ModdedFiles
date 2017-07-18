.class final Lsun/security/ssl/AbstractTrustManagerWrapper;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SSLContextImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final tm:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    instance-of v8, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v8, :cond_2

    move-object v7, p3

    nop

    nop

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v8, Ljava/security/cert/CertificateException;

    const-string/jumbo v9, "No handshake session"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    aget-object v8, p1, v9

    invoke-static {v2, v8, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    const/4 v0, 0x0

    iget v8, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v9, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v9, v9, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v8, v9, :cond_4

    instance-of v8, v6, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v8, :cond_3

    move-object v1, v6

    nop

    nop

    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, v7, v4, v10}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, v7, v10}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    goto :goto_0

    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, v7, v10}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    goto :goto_0
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "No handshake session"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    aget-object v7, p1, v8

    invoke-static {v2, v7, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    const/4 v0, 0x0

    iget v7, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v8, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v8, v8, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v7, v8, :cond_4

    instance-of v7, v6, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v7, :cond_3

    move-object v1, v6

    nop

    nop

    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, p3, v4, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    goto :goto_0

    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    goto :goto_0
.end method

.method private checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    array-length v7, p1

    add-int/lit8 v2, v7, -0x1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v7}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    invoke-static {v6, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    aget-object v7, p1, v2

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-ltz v2, :cond_2

    new-instance v3, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v3, p2}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    move v5, v2

    :goto_0
    if-ltz v5, :cond_2

    aget-object v0, p1, v5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "Certificates does not conform to algorithm constraints"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
