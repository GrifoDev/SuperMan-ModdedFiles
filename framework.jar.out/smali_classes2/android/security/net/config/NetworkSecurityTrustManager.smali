.class public Landroid/security/net/config/NetworkSecurityTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "NetworkSecurityTrustManager.java"


# instance fields
.field private final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private mIssuers:[Ljava/security/cert/X509Certificate;

.field private final mIssuersLock:Ljava/lang/Object;

.field private final mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 5

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "config must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    :try_start_0
    new-instance v0, Landroid/security/net/config/TrustedCertificateStoreAdapter;

    invoke-direct {v0, p1}, Landroid/security/net/config/TrustedCertificateStoreAdapter;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v3, Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private checkPins(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v10, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v10}, Landroid/security/net/config/NetworkSecurityConfig;->getPins()Landroid/security/net/config/PinSet;

    move-result-object v9

    iget-object v10, v9, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v9, Landroid/security/net/config/PinSet;->expirationTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->isPinningEnforced(Ljava/util/List;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/security/net/config/PinSet;->getPinAlgorithms()Ljava/util/Set;

    move-result-object v8

    new-instance v3, Landroid/util/ArrayMap;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    invoke-direct {v3, v10}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    :goto_0
    if-ltz v6, :cond_5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/MessageDigest;

    if-nez v7, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v10, v9, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    new-instance v11, Landroid/security/net/config/Pin;

    invoke-virtual {v7, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    invoke-direct {v11, v0, v12}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    return-void

    :catch_0
    move-exception v4

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_5
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string/jumbo v11, "Pin verification failed"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private isPinningEnforced(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2, v0}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Trusted chain does not end in a TrustAnchor"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-boolean v2, v1, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 8

    iget-object v7, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v6}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    new-array v5, v6, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/net/config/TrustAnchor;

    add-int/lit8 v3, v4, 0x1

    iget-object v6, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v4

    move v4, v3

    goto :goto_0

    :cond_0
    iput-object v5, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    :cond_1
    iget-object v6, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v6

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
