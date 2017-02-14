.class public Ljavax/crypto/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;

.field private volatile spi:Ljavax/crypto/SecretKeyFactorySpi;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    const-string/jumbo v1, "SecretKeyFactory"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SecretKeyFactory not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    iput-object p2, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/SecretKeyFactory;

    invoke-direct {v0, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "SecretKeyFactory"

    const-class v2, Ljavax/crypto/SecretKeyFactorySpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "SecretKeyFactory"

    const-class v2, Ljavax/crypto/SecretKeyFactorySpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    if-eq p1, v5, :cond_0

    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    return-object v7

    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljavax/crypto/SecretKeyFactorySpi;

    if-eqz v5, :cond_1

    move-object v0, v2

    check-cast v0, Ljavax/crypto/SecretKeyFactorySpi;

    move-object v4, v0

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    iput-object v4, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v4

    :cond_2
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return-object v7

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Could not generate secret key"

    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Could not get key spec"

    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final translateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/security/InvalidKeyException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/security/InvalidKeyException;

    throw v1

    :cond_3
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Could not translate key"

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
