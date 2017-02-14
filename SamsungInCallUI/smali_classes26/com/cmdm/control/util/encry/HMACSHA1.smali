.class public Lcom/cmdm/control/util/encry/HMACSHA1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[B)[B
    .locals 5

    array-length v3, p0

    array-length v4, p1

    add-int v1, v3, v4

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_1

    return-object v2

    :cond_0
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p0

    add-int/2addr v3, v0

    aget-byte v4, p1, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11

    const/16 v10, 0x40

    new-array v2, v10, [B

    new-array v5, v10, [B

    new-array v4, v10, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v6, Lcom/cmdm/control/util/encry/SHA1;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/SHA1;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v7

    array-length v0, v7

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    :cond_0
    move v1, v0

    :goto_1
    if-lt v1, v10, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v10, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v2, v9}, Lcom/cmdm/control/util/encry/HMACSHA1;->a([B[B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v8

    invoke-static {v5, v8}, Lcom/cmdm/control/util/encry/HMACSHA1;->a([B[B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v9

    return-object v9

    :cond_1
    aget-byte v9, v7, v1

    aput-byte v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v1, 0x0

    :goto_3
    array-length v9, v7

    if-ge v1, v9, :cond_0

    aget-byte v9, v7, v1

    aput-byte v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    aput-byte v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-byte v9, v4, v3

    xor-int/lit8 v9, v9, 0x36

    int-to-byte v9, v9

    aput-byte v9, v2, v3

    aget-byte v9, v4, v3

    xor-int/lit8 v9, v9, 0x5c

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    check-cast v0, [B

    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "HmacSHA1"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B
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
