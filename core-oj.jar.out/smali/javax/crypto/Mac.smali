.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final debug:Lsun/security/util/Debug;

.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initialized:Z

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "Mac"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    const/16 v0, 0xa

    sput v0, Ljavax/crypto/Mac;->warnCount:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    iput-object p1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    iput-object p1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    return-void
.end method

.method private chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    iget-object v6, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v6, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v6, "Mac"

    iget-object v8, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    invoke-virtual {v3, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/MacSpi;

    invoke-virtual {v5, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    iput-object v5, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-void

    :catch_0
    move-exception v0

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_3
    :try_start_3
    instance-of v6, v2, Ljava/security/InvalidKeyException;

    if-eqz v6, :cond_4

    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4
    :try_start_4
    instance-of v6, v2, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v6, :cond_5

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2

    :cond_5
    instance-of v6, v2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_6

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No installed provider supports this key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_7
    const-string/jumbo v1, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v3, "Mac"

    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/crypto/Mac;

    invoke-direct {v3, p0}, Ljavax/crypto/Mac;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

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

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "Mac"

    const-class v2, Ljavax/crypto/MacSpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "Mac"

    const-class v2, Ljavax/crypto/MacSpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 10

    iget-object v7, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-nez v7, :cond_0

    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    monitor-exit v8

    return-void

    :cond_2
    :try_start_1
    sget-object v7, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_4

    sget v7, Ljavax/crypto/Mac;->warnCount:I

    add-int/lit8 v6, v7, -0x1

    sput v6, Ljavax/crypto/Mac;->warnCount:I

    if-ltz v6, :cond_4

    sget-object v7, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "Mac.init() not first method called, disabling delayed provider selection"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    if-nez v6, :cond_3

    sget-object v7, Ljavax/crypto/Mac;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "Further warnings of this type will be suppressed"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v9, "Call trace"

    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v2, 0x0

    const-string/jumbo v7, "Mac"

    iget-object v9, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-static {v7}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljavax/crypto/MacSpi;

    if-eqz v7, :cond_5

    check-cast v3, Ljavax/crypto/MacSpi;

    iput-object v3, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    iput-object v7, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_0

    :cond_6
    :try_start_3
    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v7, "Could not construct MacSpi instance"

    invoke-direct {v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_7
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    iput-object v1, v0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    return-object v0
.end method

.method public final doFinal([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v2, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "MAC not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    if-eqz p1, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, v1, :cond_2

    :cond_1
    new-instance v2, Ljavax/crypto/ShortBufferException;

    const-string/jumbo v3, "Cannot store MAC in output buffer"

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "MAC not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineReset()V

    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpi()Ljavax/crypto/MacSpi;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    return-object v0
.end method

.method public final getMacLength()I
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v1}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "init() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    return-void
.end method

.method public final update(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final update([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    :cond_1
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_3

    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz p3, :cond_1

    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    :cond_3
    return-void
.end method
