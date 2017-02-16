.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final I_NO_PARAMS:I = 0x1

.field private static final I_PARAMS:I = 0x2

.field private static final debug:Lsun/security/util/Debug;

.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "KeyAgreement"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 92
    sput-object v0, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    .line 274
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/KeyAgreement;->warnCount:I

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAgreeSpi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 116
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 117
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 12
    .param p1, "initType"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v11, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 345
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 346
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 347
    return-void

    .line 349
    :cond_0
    const/4 v8, 0x0

    .line 350
    .local v8, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "KeyAgreement"

    iget-object v2, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v0, v2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v8    # "lastException":Ljava/lang/Exception;
    .local v10, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 352
    .local v9, "s":Ljava/security/Provider$Service;
    invoke-virtual {v9, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v9, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .local v1, "spi":Ljavax/crypto/KeyAgreementSpi;
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 360
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 361
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 362
    iput-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 363
    return-void

    .line 364
    .end local v1    # "spi":Ljavax/crypto/KeyAgreementSpi;
    :catch_0
    move-exception v6

    .line 368
    .local v6, "e":Ljava/lang/Exception;
    if-nez v8, :cond_1

    .line 369
    move-object v8, v6

    .local v8, "lastException":Ljava/lang/Exception;
    goto :goto_0

    .line 374
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "lastException":Ljava/lang/Exception;
    .end local v9    # "s":Ljava/security/Provider$Service;
    :cond_2
    :try_start_3
    instance-of v0, v8, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_3

    .line 375
    nop

    nop

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 377
    .restart local v10    # "s$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    instance-of v0, v8, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v0, :cond_4

    .line 378
    nop

    nop

    throw v8

    .line 380
    :cond_4
    instance-of v0, v8, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_5

    .line 381
    nop

    nop

    throw v8

    .line 383
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "kName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No installed provider supports this key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-direct {v0, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 383
    .end local v7    # "kName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v3, "KeyAgreement"

    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "services":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    .local v2, "t":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 177
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    new-instance v3, Ljavax/crypto/KeyAgreement;

    invoke-direct {v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 182
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
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
    .line 228
    const-string/jumbo v1, "KeyAgreement"

    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    .line 227
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 229
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .line 230
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 229
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 268
    const-string/jumbo v1, "KeyAgreement"

    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    .line 267
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 269
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .line 270
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 269
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "spi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 335
    invoke-virtual {p1, p3, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 333
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 10

    .prologue
    .line 282
    iget-object v7, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v7, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    iget-object v8, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 286
    :try_start_0
    iget-object v7, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    monitor-exit v8

    .line 287
    return-void

    .line 289
    :cond_1
    :try_start_1
    sget-object v7, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_3

    .line 290
    sget v7, Ljavax/crypto/KeyAgreement;->warnCount:I

    add-int/lit8 v6, v7, -0x1

    sput v6, Ljavax/crypto/KeyAgreement;->warnCount:I

    .line 291
    .local v6, "w":I
    if-ltz v6, :cond_3

    .line 292
    sget-object v7, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "KeyAgreement.init() not first method called, disabling delayed provider selection"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 294
    if-nez v6, :cond_2

    .line 295
    sget-object v7, Ljavax/crypto/KeyAgreement;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "Further warnings of this type will be suppressed"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 298
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v9, "Call trace"

    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .end local v6    # "w":I
    :cond_3
    const/4 v2, 0x0

    .line 302
    .local v2, "lastException":Ljava/lang/Exception;
    const-string/jumbo v7, "KeyAgreement"

    iget-object v9, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 303
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 307
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, "obj":Ljava/lang/Object;
    instance-of v7, v3, Ljavax/crypto/KeyAgreementSpi;

    if-eqz v7, :cond_4

    .line 311
    nop

    nop

    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 312
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    iput-object v7, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    .line 314
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_5
    :try_start_3
    new-instance v1, Ljava/security/ProviderException;

    .line 320
    const-string/jumbo v7, "Could not construct KeyAgreementSpi instance"

    .line 319
    invoke-direct {v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_6

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 324
    :cond_6
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public final doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 537
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret([BI)I
    .locals 1
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 588
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0
.end method

.method public final generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 618
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 556
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 397
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 421
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 420
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 447
    :cond_0
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 445
    :goto_0
    return-void

    .line 450
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1, v2, p2}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 482
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 505
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method
