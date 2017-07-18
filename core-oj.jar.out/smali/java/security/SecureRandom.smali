.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# static fields
.field public static final DEFAULT_SDK_TARGET_FOR_CRYPTO_PROVIDER_WORKAROUND:I = 0x17

.field private static sdkTargetForCryptoProviderWorkaround:I = 0x0

.field private static volatile seedGenerator:Ljava/security/SecureRandom; = null

.field static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private counter:J

.field private digest:Ljava/security/MessageDigest;

.field private provider:Ljava/security/Provider;

.field private randomBytes:[B

.field private randomBytesUsed:I

.field private secureRandomSpi:Ljava/security/SecureRandomSpi;

.field private state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    const/16 v0, 0x17

    sput v0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    return-void
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    return-void
.end method

.method private getDefaultPRNG(Z[B)V
    .locals 5

    invoke-static {}, Ljava/security/SecureRandom;->getPrngAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "No SecureRandom implementation!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/SecureRandom;->getSecureRandomSpi()Ljava/security/SecureRandomSpi;

    move-result-object v3

    iput-object v3, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v3

    iput-object v3, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    if-eqz p1, :cond_1

    iget-object v3, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v3, p2}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Ljava/security/SecureRandom;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/security/SecureRandom;

    if-ne v3, v4, :cond_2

    iput-object v1, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "SecureRandom"

    const-class v2, Ljava/security/SecureRandomSpi;

    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljava/security/SecureRandom;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "SecureRandom"

    const-class v3, Ljava/security/SecureRandomSpi;

    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v3, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    iget-object v4, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v3, v2, v4, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Crypto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, " ********** PLEASE READ ************ "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " * "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " * New versions of the Android SDK no longer support the Crypto provider."

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " * If your app was relying on setSeed() to derive keys from strings, you"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " * should switch to using SecretKeySpec to load raw key bytes directly OR"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " * use a real key derivation function (KDF). See advice here : "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " * http://android-developers.blogspot.com/2016/06/security-crypto-provider-deprecated-in.html "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " *********************************** "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v2

    sget v3, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    if-gt v2, v3, :cond_0

    const-string/jumbo v2, " Returning an instance of SecureRandom from the Crypto provider"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " as a temporary measure so that the apps targeting earlier SDKs"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " keep working. Please do not rely on the presence of the Crypto"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " provider in the codebase, as our plan is to delete it"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    const-string/jumbo v2, " completely in the future."

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/security/SecureRandom;->getInstanceFromCryptoProvider(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    return-object v2

    :cond_0
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "SecureRandom"

    const-class v2, Ljava/security/SecureRandomSpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljava/security/SecureRandom;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandomSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getInstanceFromCryptoProvider(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    const-class v4, Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string/jumbo v5, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "SecureRandom"

    invoke-virtual {v0, v4, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    const-class v4, Ljava/security/SecureRandomSpi;

    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    new-instance v5, Ljava/security/SecureRandom;

    iget-object v4, v2, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v4, Ljava/security/SecureRandomSpi;

    iget-object v6, v2, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v5, v4, v6, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v5

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getPrngAlgorithm()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SecureRandom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getSdkTargetForCryptoProviderWorkaround()I
    .locals 1

    sget v0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    return v0
.end method

.method public static getSeed(I)[B
    .locals 1

    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static longToByteArray(J)[B
    .locals 4

    const/16 v3, 0x8

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    shr-long/2addr p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static setSdkTargetForCryptoProviderWorkaround(I)V
    .locals 0

    sput p0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method getSecureRandomSpi()Ljava/security/SecureRandomSpi;
    .locals 1

    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    return-object v0
.end method

.method protected final next(I)I
    .locals 6

    add-int/lit8 v4, p1, 0x7

    div-int/lit8 v3, v4, 0x8

    new-array v0, v3, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    shl-int/lit8 v4, v2, 0x8

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, p1

    ushr-int v4, v2, v4

    return v4
.end method

.method public declared-synchronized nextBytes([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeed(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-static {p1, p2}, Ljava/security/SecureRandom;->longToByteArray(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setSeed([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
