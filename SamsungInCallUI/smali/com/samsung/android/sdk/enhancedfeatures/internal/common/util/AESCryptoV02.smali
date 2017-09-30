.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;
.super Ljava/lang/Object;


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static mCryptoSeedPassword:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->mCryptoSeedPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static clearCryptoSeedPassword()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setPrefDeviceBasedSeed(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->mCryptoSeedPassword:Ljava/lang/String;

    return-void
.end method

.method public static convertData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->deriveInsecureKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toByte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->decryptInSecurely([BLjavax/crypto/SecretKey;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->deriveKeySecurely(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->encryptData([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->deriveKeySecurely(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->decryptData([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private static decryptData([BLjavax/crypto/SecretKey;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->encryptOrDecrypt([BLjavax/crypto/SecretKey;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static decryptInSecurely([BLjavax/crypto/SecretKey;)[B
    .locals 4

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->retrieveIv()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This is unconceivable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->deriveKeySecurely(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->encryptData([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toHex([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static encryptData([BLjavax/crypto/SecretKey;)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->encryptOrDecrypt([BLjavax/crypto/SecretKey;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptInSecurely(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/InsecureSHA1PRNGKeyDerivator;->deriveInsecureKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->encryptInSecurely([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->toHex([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static encryptInSecurely([BLjavax/crypto/SecretKey;)[B
    .locals 4

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->retrieveIv()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This is unconceivable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encryptOrDecrypt([BLjavax/crypto/SecretKey;Z)[B
    .locals 4

    :try_start_0
    const-string v0, "AES/CBC/PKCS5PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SecureSHA1PRNGKeyDerivator;->retrieveIv()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v0, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This is unconceivable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getCryptoSeedPassword()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->mCryptoSeedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getPrefDeviceBasedSeed()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "S1D4S1D"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S1D4S1D"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->mCryptoSeedPassword:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S1D4S1D"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->mCryptoSeedPassword:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->mCryptoSeedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method private static toByte(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static toByte(Ljava/lang/String;[B)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
