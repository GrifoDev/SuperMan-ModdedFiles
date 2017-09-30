.class public Lcom/cmdm/control/util/encry/HMACSHA1;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[B)[B
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    :goto_1
    array-length v0, p1

    if-lt v1, v0, :cond_1

    return-object v2

    :cond_0
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    add-int/2addr v0, v1

    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0x40

    new-array v3, v9, [B

    new-array v4, v9, [B

    new-array v5, v9, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v6, Lcom/cmdm/control/util/encry/SHA1;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/SHA1;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v7

    array-length v0, v7

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    :goto_1
    if-lt v0, v9, :cond_3

    :goto_2
    if-lt v1, v9, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmdm/control/util/encry/HMACSHA1;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v0

    invoke-static {v4, v0}, Lcom/cmdm/control/util/encry/HMACSHA1;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v8, v7, v2

    aput-byte v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move v0, v1

    :goto_3
    array-length v8, v7

    if-lt v0, v8, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    aget-byte v8, v7, v0

    aput-byte v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-byte v0, v5, v1

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    aget-byte v0, v5, v1

    xor-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    check-cast v0, [B

    :try_start_0
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "HmacSHA1"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
