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
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 782
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 783
    iput-object p1, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    .line 782
    return-void
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "isClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 833
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 834
    instance-of v8, p3, Ljavax/net/ssl/SSLSocket;

    .line 833
    if-eqz v8, :cond_2

    move-object v7, p3

    .line 836
    nop

    nop

    .line 837
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 838
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-nez v6, :cond_0

    .line 839
    new-instance v8, Ljava/security/cert/CertificateException;

    const-string/jumbo v9, "No handshake session"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 843
    :cond_0
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "identityAlg":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 846
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, "hostname":Ljava/lang/String;
    aget-object v8, p1, v9

    .line 847
    invoke-static {v2, v8, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 853
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    .line 854
    .local v5, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    const/4 v0, 0x0

    .line 855
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    iget v8, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v9, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v9, v9, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v8, v9, :cond_4

    .line 856
    instance-of v8, v6, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v8, :cond_3

    move-object v1, v6

    .line 858
    nop

    nop

    .line 860
    .local v1, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, "peerSupportedSignAlgs":[Ljava/lang/String;
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    invoke-direct {v0, v7, v4, v10}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    .line 872
    .end local v1    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v4    # "peerSupportedSignAlgs":[Ljava/lang/String;
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    :goto_0
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;)V

    .line 832
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v3    # "identityAlg":Ljava/lang/String;
    .end local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    .end local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    return-void

    .line 866
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    .restart local v3    # "identityAlg":Ljava/lang/String;
    .restart local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v6    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_3
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    invoke-direct {v0, v7, v10}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    .line 865
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 869
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    invoke-direct {v0, v7, v10}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0
.end method

.method private checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p4, "isClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 878
    if-eqz p3, :cond_2

    .line 879
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 880
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-nez v6, :cond_0

    .line 881
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "No handshake session"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 885
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 887
    .local v3, "identityAlg":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 888
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "hostname":Ljava/lang/String;
    aget-object v7, p1, v8

    .line 889
    invoke-static {v2, v7, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 895
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    .line 896
    .local v5, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    const/4 v0, 0x0

    .line 897
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    iget v7, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v8, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v8, v8, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v7, v8, :cond_4

    .line 898
    instance-of v7, v6, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v7, :cond_3

    move-object v1, v6

    .line 900
    nop

    nop

    .line 902
    .local v1, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, "peerSupportedSignAlgs":[Ljava/lang/String;
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    invoke-direct {v0, p3, v4, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    .line 914
    .end local v1    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v4    # "peerSupportedSignAlgs":[Ljava/lang/String;
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    :goto_0
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;)V

    .line 877
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v3    # "identityAlg":Ljava/lang/String;
    .end local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_2
    return-void

    .line 908
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    .restart local v3    # "identityAlg":Ljava/lang/String;
    .restart local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_3
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .line 907
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 911
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0
.end method

.method private checkAlgorithmConstraints([Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;)V
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 923
    :try_start_0
    array-length v7, p1

    add-int/lit8 v2, v7, -0x1

    .line 925
    .local v2, "checkedLength":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 926
    .local v6, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    iget-object v7, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v7}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 927
    .local v1, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    .line 928
    invoke-static {v6, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 931
    :cond_0
    aget-object v7, p1, v2

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 932
    add-int/lit8 v2, v2, -0x1

    .line 936
    :cond_1
    if-ltz v2, :cond_2

    .line 937
    new-instance v3, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v3, p2}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    .line 938
    .local v3, "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    .line 939
    move v5, v2

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 940
    aget-object v0, p1, v5

    .line 942
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 945
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "checkedLength":I
    .end local v3    # "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v5    # "i":I
    .end local v6    # "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v4

    .line 946
    .local v4, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v7, Ljava/security/cert/CertificateException;

    .line 947
    const-string/jumbo v8, "Certificates does not conform to algorithm constraints"

    .line 946
    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 919
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "checkedLength":I
    .restart local v6    # "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 805
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 819
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 814
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 812
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/AbstractTrustManagerWrapper;->checkAdditionalTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 826
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lsun/security/ssl/AbstractTrustManagerWrapper;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
