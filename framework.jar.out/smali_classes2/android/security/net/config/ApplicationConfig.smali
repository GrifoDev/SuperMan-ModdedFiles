.class public final Landroid/security/net/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static sInstance:Landroid/security/net/config/ApplicationConfig;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private mConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/security/net/config/ConfigSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    return-void
.end method

.method private ensureInitialized()V
    .locals 2

    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    new-instance v0, Landroid/security/net/config/RootTrustManager;

    invoke-direct {v0, p0}, Landroid/security/net/config/RootTrustManager;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultInstance()Landroid/security/net/config/ApplicationConfig;
    .locals 2

    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V
    .locals 2

    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;
    .locals 8

    const/4 v6, 0x0

    const/16 v7, 0x2e

    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v5

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "hostname must not begin with a ."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const/4 v0, 0x0

    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/Domain;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/security/net/config/NetworkSecurityConfig;

    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v1

    :cond_5
    iget-boolean v5, v2, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v5, :cond_4

    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    if-nez v0, :cond_6

    move-object v0, v3

    goto :goto_0

    :cond_6
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/Domain;

    iget-object v5, v5, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v6, v5, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig;

    return-object v5

    :cond_8
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v5
.end method

.method public getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 5

    iget-object v4, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v3, :cond_2

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    monitor-exit v4

    return-void
.end method

.method public hasPerDomainConfigs()Z
    .locals 1

    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 3

    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    return v2
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
