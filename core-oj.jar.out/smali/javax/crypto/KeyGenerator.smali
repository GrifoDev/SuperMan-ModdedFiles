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
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    .line 208
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 209
    const-string/jumbo v1, "KeyGenerator"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    .line 211
    const/4 v1, 0x1

    iput v1, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 213
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " KeyGenerator not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyGenSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    .line 202
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 203
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 204
    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljavax/crypto/KeyGenerator;

    invoke-direct {v0, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 305
    const-string/jumbo v1, "KeyGenerator"

    .line 306
    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    .line 305
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 307
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    .line 308
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 307
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 343
    const-string/jumbo v1, "KeyGenerator"

    .line 344
    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    .line 343
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 345
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    .line 346
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 345
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;
    .locals 10
    .param p1, "oldSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "reinit"    # Z

    .prologue
    const/4 v9, 0x0

    .line 369
    iget-object v6, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 372
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    if-eq p1, v5, :cond_0

    .line 373
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 375
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    .line 376
    return-object v9

    .line 378
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 379
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 380
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 386
    .local v2, "inst":Ljava/lang/Object;
    instance-of v5, v2, Ljavax/crypto/KeyGeneratorSpi;

    if-eqz v5, :cond_1

    .line 389
    move-object v0, v2

    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    move-object v4, v0

    .line 390
    .local v4, "spi":Ljavax/crypto/KeyGeneratorSpi;
    if-eqz p2, :cond_2

    .line 391
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 392
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 402
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 403
    iput-object v4, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 404
    return-object v4

    .line 393
    :cond_3
    :try_start_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 394
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_1

    .line 405
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 396
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 369
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 397
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/security/Provider$Service;
    .restart local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_5
    :try_start_5
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    .line 398
    new-instance v5, Ljava/lang/AssertionError;

    .line 399
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

    .line 398
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 409
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    .line 410
    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 417
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 418
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    .line 414
    return-void
.end method

.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    .line 579
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 580
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 582
    :cond_0
    const/4 v1, 0x0

    .line 583
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 586
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 589
    move-object v1, v0

    .line 591
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 593
    if-nez v2, :cond_1

    .line 594
    throw v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    .prologue
    .line 355
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V

    .line 357
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final init(I)V
    .locals 1
    .param p1, "keysize"    # I

    .prologue
    .line 534
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 533
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 549
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 550
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 551
    return-void

    .line 553
    :cond_0
    const/4 v1, 0x0

    .line 554
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 557
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 558
    const/4 v3, 0x4

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 559
    iput p1, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 560
    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 561
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 565
    move-object v1, v0

    .line 567
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 569
    if-nez v2, :cond_1

    .line 570
    throw v1
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v4, 0x0

    .line 427
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 428
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 429
    return-void

    .line 431
    :cond_0
    const/4 v1, 0x0

    .line 432
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 435
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 436
    const/4 v3, 0x2

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 437
    const/4 v3, 0x0

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 438
    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 439
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 443
    move-object v1, v0

    .line 445
    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 447
    if-nez v2, :cond_1

    .line 448
    throw v1
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 470
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 468
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 486
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 487
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 488
    return-void

    .line 490
    :cond_0
    const/4 v1, 0x0

    .line 491
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 494
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 495
    const/4 v3, 0x3

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 496
    const/4 v3, 0x0

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 497
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 498
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 502
    move-object v1, v0

    .line 504
    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 506
    if-nez v2, :cond_1

    .line 507
    instance-of v3, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v3, :cond_3

    .line 508
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1

    .line 510
    :cond_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 511
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 513
    :cond_4
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "init() failed"

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
