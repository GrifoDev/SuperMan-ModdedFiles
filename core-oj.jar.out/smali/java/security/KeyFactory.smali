.class public Ljava/security/KeyFactory;
.super Ljava/lang/Object;
.source "KeyFactory.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile spi:Ljava/security/KeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "KeyFactory"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/KeyFactory;->debug:Lsun/security/util/Debug;

    return-void
.end method

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

    iput-object v1, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    const-string/jumbo v1, "KeyFactory"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " KeyFactory not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    iput-object p2, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyFactory;

    invoke-direct {v0, p0}, Ljava/security/KeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "KeyFactory"

    const-class v2, Ljava/security/KeyFactorySpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljava/security/KeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "KeyFactory"

    const-class v2, Ljava/security/KeyFactorySpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljava/security/KeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    if-eq p1, v5, :cond_0

    iget-object v5, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    return-object v7

    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/security/KeyFactorySpi;

    if-eqz v5, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/security/KeyFactorySpi;

    move-object v4, v0

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    iput-object v4, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v4

    :cond_2
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;
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
.method public final generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_3
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Could not generate private key"

    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_3
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Could not generate public key"

    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_3
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    :cond_4
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v4, "Could not get key spec"

    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    iget-object v1, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    iget-object v0, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final translateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_3
    instance-of v3, v1, Ljava/security/InvalidKeyException;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/security/InvalidKeyException;

    throw v1

    :cond_4
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Could not translate key"

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
