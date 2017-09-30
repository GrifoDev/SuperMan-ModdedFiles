.class public Lcom/samsung/android/sdk/ssf/message/util/AesCipher;
.super Ljava/lang/Object;


# static fields
.field static final AES_128_KEY_BITS:I = 0x80

.field static final AES_256_KEY_BITS:I = 0x100

.field static final HEX_CHAR_TABLE:[B

.field static final ONE_BYTE_BITS:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected dcipher:Ljavax/crypto/Cipher;

.field protected ecipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->HEX_CHAR_TABLE:[B

    const-class v0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x100

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->getInitializationVector(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x100

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->getAESKey(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->ecipher:Ljavax/crypto/Cipher;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->dcipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->ecipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->dcipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/util/AesCipher;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAESKey(Ljava/lang/String;I)[B
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    div-int/lit8 v1, p1, 0x8

    new-array v2, v1, [B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->HEX_CHAR_TABLE:[B

    ushr-int/lit8 v7, v4, 0x4

    aget-byte v6, v6, v7

    aput-byte v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->HEX_CHAR_TABLE:[B

    and-int/lit8 v4, v4, 0xf

    aget-byte v4, v6, v4

    aput-byte v4, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInitializationVector(Ljava/lang/String;I)[B
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    div-int/lit8 v2, p1, 0x8

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, v1

    sub-int v3, v0, v2

    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->dcipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encrypt([B)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->ecipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/util/AesCipher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/message/util/MessageLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
