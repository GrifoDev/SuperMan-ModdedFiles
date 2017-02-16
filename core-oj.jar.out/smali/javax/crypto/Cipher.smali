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

    .prologue
    .line 628
    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "Cipher"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 627
    sput-object v0, Ljavax/crypto/Cipher;->debug:Lsun/security/util/Debug;

    .line 625
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 2
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 685
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cipherSpi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    instance-of v0, p1, Ljavax/crypto/NullCipherSpi;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 707
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_1
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 711
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 712
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 713
    iput-object v1, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 716
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    .line 715
    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 702
    return-void
.end method

.method private constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "tokenizedTransformation"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 685
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 723
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 724
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 725
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 726
    iput-object p4, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 729
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    .line 728
    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 722
    return-void
.end method

.method private checkCipherState()V
    .locals 2

    .prologue
    .line 1639
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1

    .line 1640
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    .line 1641
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1643
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1644
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1638
    :cond_1
    return-void
.end method

.method private static checkOpmode(I)V
    .locals 2
    .param p0, "opmode"    # I

    .prologue
    .line 1088
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 1089
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid operation mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_1
    return-void
.end method

.method private chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "params"    # Ljava/security/AlgorithmParameters;
    .param p6, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 954
    :try_start_0
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    .line 956
    .local v0, "initParams":Ljavax/crypto/Cipher$InitParams;
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    return-void

    .line 957
    .end local v0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    :catch_0
    move-exception v8

    .line 959
    .local v8, "lastException":Ljava/lang/Exception;
    instance-of v1, v8, Ljava/security/InvalidKeyException;

    if-eqz v1, :cond_0

    .line 960
    check-cast v8, Ljava/security/InvalidKeyException;

    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    .line 962
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_0
    instance-of v1, v8, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v1, :cond_1

    .line 963
    check-cast v8, Ljava/security/InvalidAlgorithmParameterException;

    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    .line 965
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_1
    instance-of v1, v8, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 966
    check-cast v8, Ljava/lang/RuntimeException;

    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    .line 968
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 969
    .local v7, "kName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/security/InvalidKeyException;

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No installed provider supports this key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 969
    invoke-direct {v1, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 968
    .end local v7    # "kName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "(null)"

    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_0
.end method

.method static final createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 906
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "tokenizedTransformation":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 911
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3, p1, v2}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 917
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-nez v0, :cond_1

    .line 918
    if-nez p1, :cond_0

    .line 919
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

    .line 912
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :catch_0
    move-exception v1

    .line 914
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Key/Algorithm excepton despite not passing one"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 921
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
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

    .line 922
    const-string/jumbo v5, " does not provide "

    .line 921
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 927
    :cond_1
    new-instance v3, Ljavax/crypto/Cipher;

    invoke-direct {v3, v4, p1, p0, v2}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method private getAlgorithmParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2443
    if-nez p1, :cond_0

    .line 2444
    return-object v3

    .line 2447
    :cond_0
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2449
    .local v0, "alg":Ljava/lang/String;
    const-string/jumbo v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2450
    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2453
    :cond_1
    const-string/jumbo v1, "RC5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2454
    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2457
    :cond_2
    const-string/jumbo v1, "PBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2458
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2461
    :cond_3
    const-string/jumbo v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2462
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2464
    :cond_4
    return-object v3
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 850
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 851
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 854
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 855
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

    .line 858
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 898
    if-nez p1, :cond_0

    .line 899
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 2493
    if-nez p0, :cond_0

    .line 2494
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2497
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2498
    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2526
    if-nez p0, :cond_0

    .line 2527
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2530
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2531
    return-object v0
.end method

.method static matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2679
    if-nez p2, :cond_0

    .line 2680
    return v2

    .line 2682
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2683
    .local v0, "pattern":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2684
    return v2

    .line 2686
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2687
    .local v1, "valueUc":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 734
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 735
    :cond_0
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "No transformation given"

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 744
    :cond_1
    new-array v4, v7, [Ljava/lang/String;

    .line 745
    .local v4, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 746
    .local v0, "count":I
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "/"

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "parser":Ljava/util/StringTokenizer;
    move v1, v0

    .line 748
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    if-ge v1, v7, :cond_2

    .line 749
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 751
    :cond_2
    if-eqz v1, :cond_3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 752
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

    .line 756
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/util/NoSuchElementException;
    move v0, v1

    .line 757
    .end local v1    # "count":I
    .restart local v0    # "count":I
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

    .line 751
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "count":I
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 760
    aget-object v5, v4, v6

    if-eqz v5, :cond_5

    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 761
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

    .line 765
    :cond_6
    return-object v4

    .line 756
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/util/NoSuchElementException;
    goto :goto_1
.end method

.method static tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 13
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "tokenizedTransformation"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 2845
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2846
    .local v7, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/crypto/Cipher$Transform;>;"
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_0

    .line 2847
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

    .line 2848
    const/4 v10, 0x2

    aget-object v10, p2, v10

    .line 2847
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2848
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    .line 2847
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2850
    :cond_0
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_1

    .line 2851
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

    .line 2852
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    .line 2851
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    :cond_1
    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_2

    .line 2855
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

    .line 2856
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    .line 2855
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2858
    :cond_2
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    const/4 v9, 0x0

    aget-object v9, p2, v9

    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    const/4 v0, 0x0

    .line 2864
    .local v0, "cause":Ljava/lang/Exception;
    if-eqz p1, :cond_4

    .line 2865
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "transform$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher$Transform;

    .line 2866
    .local v5, "transform":Ljavax/crypto/Cipher$Transform;
    const-string/jumbo v8, "Cipher"

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    .line 2867
    .local v4, "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_3

    .line 2870
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v8

    invoke-static {p0, p2, v8, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v8

    return-object v8

    .line 2874
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    .end local v0    # "cause":Ljava/lang/Exception;
    :goto_0
    if-ge v8, v10, :cond_9

    aget-object v2, v9, v8

    .line 2875
    .local v2, "prov":Ljava/security/Provider;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher$Transform;

    .line 2876
    .restart local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    const-string/jumbo v11, "Cipher"

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    .line 2877
    .restart local v4    # "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_5

    .line 2881
    if-eqz p0, :cond_6

    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v11, :cond_7

    .line 2885
    :cond_6
    :goto_2
    :try_start_0
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v11

    .line 2884
    invoke-static {p0, p2, v11, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2886
    .local v3, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-eqz v3, :cond_5

    .line 2887
    return-object v3

    .line 2882
    .end local v3    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_7
    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-virtual {v4, v11}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v11

    .line 2881
    if-eqz v11, :cond_5

    goto :goto_2

    .line 2889
    :catch_0
    move-exception v1

    .line 2890
    .local v1, "e":Ljava/lang/Exception;
    if-nez v0, :cond_5

    .line 2891
    move-object v0, v1

    .local v0, "cause":Ljava/lang/Exception;
    goto :goto_1

    .line 2874
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2898
    .end local v2    # "prov":Ljava/security/Provider;
    .end local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_9
    instance-of v8, v0, Ljava/security/InvalidKeyException;

    if-eqz v8, :cond_a

    .line 2899
    check-cast v0, Ljava/security/InvalidKeyException;

    throw v0

    .line 2900
    :cond_a
    instance-of v8, v0, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v8, :cond_b

    .line 2901
    check-cast v0, Ljava/security/InvalidAlgorithmParameterException;

    throw v0

    .line 2902
    :cond_b
    instance-of v8, v0, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_c

    .line 2903
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 2904
    :cond_c
    if-eqz v0, :cond_d

    .line 2905
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "No provider can be initialized with given key"

    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2906
    :cond_d
    if-eqz p0, :cond_e

    iget-object v8, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v8, :cond_f

    .line 2907
    :cond_e
    const/4 v8, 0x0

    return-object v8

    .line 2911
    :cond_f
    new-instance v8, Ljava/security/InvalidKeyException;

    .line 2912
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

    .line 2913
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-interface {v10}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2913
    const-string/jumbo v10, " key of class "

    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2914
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2914
    const-string/jumbo v10, " and export format "

    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2915
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-interface {v10}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v10

    .line 2912
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2911
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 9
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "tokenizedTransformation"    # [Ljava/lang/String;
    .param p2, "type"    # Ljavax/crypto/Cipher$NeedToSet;
    .param p3, "service"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2946
    :try_start_0
    const-string/jumbo v4, "SupportedModes"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2947
    const-string/jumbo v4, "SupportedPaddings"

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2951
    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    .line 2952
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/CipherSpi;

    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    .line 2951
    invoke-direct {v2, v4, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    .line 2953
    .local v2, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    if-eqz v4, :cond_0

    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v4, :cond_2

    .line 2954
    :cond_0
    return-object v8

    .line 2948
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_1
    return-object v8

    .line 2956
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_2
    iget-object v3, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    .line 2957
    .local v3, "spi":Ljavax/crypto/CipherSpi;
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v4, :cond_3

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v4, :cond_4

    .line 2958
    :cond_3
    const/4 v4, 0x1

    aget-object v4, p1, v4

    if-eqz v4, :cond_4

    .line 2959
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 2961
    :cond_4
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v4, :cond_5

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v4, :cond_6

    .line 2962
    :cond_5
    const/4 v4, 0x2

    aget-object v4, p1, v4

    if-eqz v4, :cond_6

    .line 2963
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    .line 2966
    :cond_6
    if-eqz p0, :cond_7

    .line 2967
    invoke-static {}, Ljavax/crypto/Cipher;->-getjavax-crypto-Cipher$InitTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v5}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2980
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "This should never be reached"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2984
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_0
    move-exception v0

    .line 2987
    :goto_0
    return-object v8

    .line 2969
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_0
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    .line 2970
    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    .line 2969
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 2983
    :cond_7
    :goto_1
    new-instance v4, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v5, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v4, v3, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    return-object v4

    .line 2973
    :pswitch_1
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 2974
    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    .line 2973
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_1

    .line 2985
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 2977
    .end local v1    # "ignored":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_2
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2967
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
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 2337
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2339
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2342
    :cond_1
    if-ne p1, p2, :cond_2

    .line 2343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2346
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2347
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 2350
    :cond_3
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2351
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .locals 6
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1995
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1998
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1999
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2002
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2003
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
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2179
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2182
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 2184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2183
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 2187
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2188
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
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 2258
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2261
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 2264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2262
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 2263
    if-ltz p5, :cond_0

    .line 2267
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2268
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

    .prologue
    const/4 v2, 0x0

    .line 1936
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1938
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1939
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 2048
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2051
    if-nez p1, :cond_0

    .line 2052
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2056
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 2105
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2108
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 2110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2109
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 2113
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2114
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 1005
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1006
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public getCurrentSpi()Ljavax/crypto/CipherSpi;
    .locals 1

    .prologue
    .line 2665
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1082
    iget-object v0, p0, Ljavax/crypto/Cipher;->exmech:Ljavax/crypto/ExemptionMechanism;

    return-object v0
.end method

.method public final getIV()[B
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1055
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    .prologue
    .line 1031
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-eqz v0, :cond_1

    .line 1034
    :cond_0
    if-gez p1, :cond_2

    .line 1035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1039
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 1070
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1071
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 982
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1143
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1142
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1393
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1391
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1453
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1455
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1458
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1450
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1195
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1196
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1199
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

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1206
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1193
    return-void

    .line 1200
    :catch_0
    move-exception v7

    .line 1202
    .local v7, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1267
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1265
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "opmode"    # I
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
    .line 1326
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1327
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1329
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1331
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1332
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1324
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1524
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 1522
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .locals 12
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x3

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1592
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1596
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    move-object v7, p2

    .line 1599
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 1600
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 1602
    .local v8, "critSet":Ljava/util/Set;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "critSet":Ljava/util/Set;
    :cond_0
    if-nez p2, :cond_3

    const/4 v3, 0x0

    .line 1623
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

    .line 1629
    iput-boolean v11, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1630
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1590
    return-void

    .line 1603
    .restart local v7    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "critSet":Ljava/util/Set;
    :cond_1
    const-string/jumbo v0, "2.5.29.15"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1602
    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 1607
    .local v10, "keyUsageInfo":[Z
    if-eqz v10, :cond_0

    .line 1608
    if-ne p1, v11, :cond_2

    .line 1609
    array-length v0, v10

    if-le v0, v1, :cond_2

    .line 1610
    aget-boolean v0, v10, v1

    if-nez v0, :cond_2

    .line 1614
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Wrong key usage"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1611
    :cond_2
    if-ne p1, v1, :cond_0

    .line 1612
    array-length v0, v10

    if-le v0, v2, :cond_0

    .line 1613
    aget-boolean v0, v10, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1620
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "critSet":Ljava/util/Set;
    .end local v10    # "keyUsageInfo":[Z
    :cond_3
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .local v3, "publicKey":Ljava/security/PublicKey;
    goto :goto_0

    .line 1624
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v9

    .line 1626
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 2
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 2419
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1

    .line 2420
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    .line 2421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2423
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for unwrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_1
    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    .line 2429
    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    .line 2430
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    .line 2431
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2434
    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2435
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1880
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1882
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1885
    :cond_1
    if-ne p1, p2, :cond_2

    .line 1886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1890
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1893
    :cond_3
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1894
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1765
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1768
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1770
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 1773
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1774
    if-nez p3, :cond_2

    .line 1775
    return v5

    .line 1777
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
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1823
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1826
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1829
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1827
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 1828
    if-ltz p5, :cond_0

    .line 1832
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1833
    if-nez p3, :cond_2

    .line 1834
    return v1

    .line 1836
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
    .param p1, "input"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1672
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1675
    if-nez p1, :cond_0

    .line 1676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1679
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1680
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1681
    return-object v1

    .line 1683
    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final update([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 1711
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1714
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1716
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1715
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    if-ltz p3, :cond_0

    .line 1719
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1720
    if-nez p3, :cond_2

    .line 1721
    return-object v1

    .line 1723
    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final updateAAD(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2644
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2647
    if-nez p1, :cond_0

    .line 2648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src ByteBuffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2651
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2652
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 2653
    return-void

    .line 2655
    :cond_1
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    .line 2643
    return-void
.end method

.method public final updateAAD([B)V
    .locals 2
    .param p1, "src"    # [B

    .prologue
    .line 2560
    if-nez p1, :cond_0

    .line 2561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2564
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 2559
    return-void
.end method

.method public final updateAAD([BII)V
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 2598
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2601
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 2603
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2601
    :cond_1
    if-ltz p3, :cond_0

    .line 2602
    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 2606
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2607
    if-nez p3, :cond_2

    .line 2608
    return-void

    .line 2610
    :cond_2
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    .line 2597
    return-void
.end method

.method updateProviderIfNeeded()V
    .locals 6

    .prologue
    .line 937
    :try_start_0
    iget-object v2, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v3, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v4, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    return-void

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "lastException":Ljava/lang/Exception;
    new-instance v0, Ljava/security/ProviderException;

    .line 940
    const-string/jumbo v2, "Could not construct CipherSpi instance"

    .line 939
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 941
    .local v0, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v0, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 944
    :cond_0
    throw v0
.end method

.method public final wrap(Ljava/security/Key;)[B
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 2375
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1

    .line 2376
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_0

    .line 2377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2379
    :cond_0
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for wrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2385
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2386
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
