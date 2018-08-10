.class public final Landroid/security/net/config/NetworkSecurityConfig;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/NetworkSecurityConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLEARTEXT_TRAFFIC_PERMITTED:Z = true

.field public static final DEFAULT_HSTS_ENFORCED:Z


# instance fields
.field private mAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnchorsLock:Ljava/lang/Object;

.field private final mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mCleartextTrafficPermitted:Z

.field private final mHstsEnforced:Z

.field private final mPins:Landroid/security/net/config/PinSet;

.field private mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

.field private final mTrustManagerLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/security/net/config/PinSet;",
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    iput-boolean p2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    iput-object p3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    iput-object p4, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$1;

    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityConfig$1;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method synthetic constructor <init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;)V

    return-void
.end method

.method public static final getDefaultBuilder(II)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v2

    new-instance v3, Landroid/security/net/config/CertificatesEntryRef;

    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    invoke-virtual {v2, v3}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    const/16 v2, 0x17

    if-gt p0, v2, :cond_0

    new-instance v2, Landroid/security/net/config/CertificatesEntryRef;

    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    invoke-virtual {v0, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    return-object v4
.end method

.method public findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    return-object v4
.end method

.method public getPins()Landroid/security/net/config/PinSet;
    .locals 1

    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    iget-object v9, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v8

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {v6}, Landroid/security/net/config/CertificatesEntryRef;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/net/config/TrustAnchor;

    iget-object v5, v0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_3
    :try_start_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v3, v8}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iput-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    iget-object v8, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    return-object v8
.end method

.method public getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;
    .locals 2

    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/security/net/config/NetworkSecurityTrustManager;

    invoke-direct {v0, p0}, Landroid/security/net/config/NetworkSecurityTrustManager;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 4

    iget-object v3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    iget-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/net/config/CertificatesEntryRef;

    invoke-virtual {v0}, Landroid/security/net/config/CertificatesEntryRef;->handleTrustStorageUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityTrustManager;->handleTrustStorageUpdate()V

    return-void
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public isHstsEnforced()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    return v0
.end method
