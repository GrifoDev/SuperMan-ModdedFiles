.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$CipherSpiAndProvider;,
        Ljavax/crypto/Cipher$InitParams;,
        Ljavax/crypto/Cipher$InitType;,
        Ljavax/crypto/Cipher$NeedToSet;,
        Ljavax/crypto/Cipher$SpiAndProviderUpdater;,
        Ljavax/crypto/Cipher$Transform;
    }
.end annotation


# static fields
.field private static final synthetic -javax-crypto-Cipher$InitTypeSwitchesValues:[I = null

.field private static final ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final KEY_USAGE_EXTENSION_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private exmech:Ljavax/crypto/ExemptionMechanism;

.field private initialized:Z

.field private opmode:I

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/CipherSpi;

.field private final spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

.field private final tokenizedTransformation:[Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getjavax-crypto-Cipher$InitTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljavax/crypto/Cipher$InitType;->values()[Ljavax/crypto/Cipher$InitType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    iput-object p1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic -set1(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .locals 0

    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "Cipher"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljavax/crypto/Cipher;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cipherSpi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljavax/crypto/NullCipherSpi;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    return-void
.end method

.method private constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    iput-object p4, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    return-void
.end method

.method private checkCipherState()V
    .locals 2

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkOpmode(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid operation mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    iget-object v1, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v8

    instance-of v1, v8, Ljava/security/InvalidKeyException;

    if-eqz v1, :cond_0

    check-cast v8, Ljava/security/InvalidKeyException;

    throw v8

    :cond_0
    instance-of v1, v8, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v1, :cond_1

    check-cast v8, Ljava/security/InvalidAlgorithmParameterException;

    throw v8

    :cond_1
    instance-of v1, v8, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v8, Ljava/lang/RuntimeException;

    throw v8

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No installed provider supports this key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const-string/jumbo v7, "(null)"

    goto :goto_0
.end method

.method static final createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3, p1, v2}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No provider found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Key/Algorithm excepton despite not passing one"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not provide "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljavax/crypto/Cipher;

    invoke-direct {v3, v4, p1, p0, v2}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method private getAlgorithmParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "RC5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "PBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    :cond_3
    const-string/jumbo v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    :cond_4
    return-object v3
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    return-object v0
.end method

.method static matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "No transformation given"

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-array v4, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "/"

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    if-ge v1, v7, :cond_2

    add-int/lit8 v0, v1, 0x1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    :cond_3
    :try_start_2
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid transformation format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    move v0, v1

    :goto_1
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid transformation format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v4, v6

    if-eqz v5, :cond_5

    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid transformation:algorithm not specified-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    return-object v4

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_0

    new-instance v8, Ljavax/crypto/Cipher$Transform;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_1

    new-instance v8, Ljavax/crypto/Cipher$Transform;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    new-instance v8, Ljavax/crypto/Cipher$Transform;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    const/4 v9, 0x0

    aget-object v9, p2, v9

    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher$Transform;

    const-string/jumbo v8, "Cipher"

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v8

    invoke-static {p0, p2, v8, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v8

    return-object v8

    :cond_4
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_9

    aget-object v2, v9, v8

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher$Transform;

    const-string/jumbo v11, "Cipher"

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz p0, :cond_6

    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v11, :cond_7

    :cond_6
    :goto_2
    :try_start_0
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v11

    invoke-static {p0, p2, v11, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_7
    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-virtual {v4, v11}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :catch_0
    move-exception v1

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_9
    instance-of v8, v0, Ljava/security/InvalidKeyException;

    if-eqz v8, :cond_a

    check-cast v0, Ljava/security/InvalidKeyException;

    throw v0

    :cond_a
    instance-of v8, v0, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v8, :cond_b

    check-cast v0, Ljava/security/InvalidAlgorithmParameterException;

    throw v0

    :cond_b
    instance-of v8, v0, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_c

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_c
    if-eqz v0, :cond_d

    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "No provider can be initialized with given key"

    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_d
    if-eqz p0, :cond_e

    iget-object v8, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v8, :cond_f

    :cond_e
    const/4 v8, 0x0

    return-object v8

    :cond_f
    new-instance v8, Ljava/security/InvalidKeyException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No provider offers "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-interface {v10}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " key of class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " and export format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-interface {v10}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v4, "SupportedModes"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SupportedPaddings"

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/CipherSpi;

    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    if-eqz v4, :cond_0

    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v4, :cond_2

    :cond_0
    return-object v8

    :cond_1
    return-object v8

    :cond_2
    iget-object v3, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v4, :cond_3

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    aget-object v4, p1, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    :cond_4
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v4, :cond_5

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v4, :cond_6

    :cond_5
    const/4 v4, 0x2

    aget-object v4, p1, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    :cond_6
    if-eqz p0, :cond_7

    invoke-static {}, Ljavax/crypto/Cipher;->-getjavax-crypto-Cipher$InitTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v5}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "This should never be reached"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_0
    move-exception v0

    :goto_0
    return-object v8

    :pswitch_0
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    :cond_7
    :goto_1
    new-instance v4, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v5, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v4, v3, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    return-object v4

    :pswitch_1
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :pswitch_2
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne p1, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    if-ltz p5, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public getCurrentSpi()Ljavax/crypto/CipherSpi;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->exmech:Ljavax/crypto/ExemptionMechanism;

    return-object v0
.end method

.method public final getIV()[B
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2

    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-eqz v0, :cond_1

    :cond_0
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    :try_start_0
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    return-void

    :catch_0
    move-exception v7

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    move-object v7, p2

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_3

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v11, p0, Ljavax/crypto/Cipher;->initialized:Z

    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    return-void

    :cond_1
    const-string/jumbo v0, "2.5.29.15"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    if-eqz v10, :cond_0

    if-ne p1, v11, :cond_2

    array-length v0, v10

    if-le v0, v1, :cond_2

    aget-boolean v0, v10, v1

    if-nez v0, :cond_2

    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Wrong key usage"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne p1, v1, :cond_0

    array-length v0, v10

    if-le v0, v2, :cond_0

    aget-boolean v0, v10, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for unwrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne p1, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    if-nez p3, :cond_2

    return v5

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    if-ltz p5, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    if-nez p3, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([B)[B
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    array-length v0, p1

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final update([BII)[B
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    if-nez p3, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final updateAAD(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src ByteBuffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final updateAAD([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method

.method public final updateAAD([BII)V
    .locals 2

    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    return-void
.end method

.method updateProviderIfNeeded()V
    .locals 6

    :try_start_0
    iget-object v2, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v3, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v4, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v2, "Could not construct CipherSpi instance"

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    throw v0
.end method

.method public final wrap(Ljava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for wrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
