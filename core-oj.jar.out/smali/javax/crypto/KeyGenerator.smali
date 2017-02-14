.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final I_NONE:I = 0x1

.field private static final I_PARAMS:I = 0x3

.field private static final I_RANDOM:I = 0x2

.field private static final I_SIZE:I = 0x4


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initKeySize:I

.field private initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private initRandom:Ljava/security/SecureRandom;

.field private initType:I

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;

.field private volatile spi:Ljavax/crypto/KeyGeneratorSpi;


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

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    const-string/jumbo v1, "KeyGenerator"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    const/4 v1, 0x1

    iput v1, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " KeyGenerator not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/KeyGenerator;

    invoke-direct {v0, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "KeyGenerator"

    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "KeyGenerator"

    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    if-eq p1, v5, :cond_0

    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    return-object v9

    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

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

    instance-of v5, v2, Ljavax/crypto/KeyGeneratorSpi;

    if-eqz v5, :cond_1

    move-object v0, v2

    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    move-object v4, v0

    if-eqz p2, :cond_2

    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    iget v5, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    iput-object v4, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v4

    :cond_3
    :try_start_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_5
    :try_start_5
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KeyGenerator initType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljavax/crypto/KeyGenerator;->initType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/KeyGenerator;->initType:I

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    if-nez v2, :cond_1

    throw v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V

    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final init(I)V
    .locals 1

    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 4

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    const/4 v3, 0x4

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    iput p1, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    if-nez v2, :cond_1

    throw v1
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    const/4 v3, 0x2

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v3, 0x0

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    if-nez v2, :cond_1

    throw v1
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/4 v3, 0x3

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v3, 0x0

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v3, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1

    :cond_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_4
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "init() failed"

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
