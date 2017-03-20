.class public Lcom/cmdm/control/util/encry/HMACSHA1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[B)[B
    .locals 5
    .param p0, "b1"    # [B
    .param p1, "b2"    # [B

    .prologue
    .line 53
    array-length v3, p0

    array-length v4, p1

    add-int v1, v3, v4

    .line 54
    .local v1, "length":I
    new-array v2, v1, [B

    .line 55
    .local v2, "newer":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 58
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 61
    return-object v2

    .line 56
    :cond_0
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    array-length v3, p0

    add-int/2addr v3, v0

    aget-byte v4, p1, v0

    aput-byte v4, v2, v3

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x40

    .line 22
    new-array v2, v10, [B

    .line 23
    .local v2, "ipadArray":[B
    new-array v5, v10, [B

    .line 24
    .local v5, "opadArray":[B
    new-array v4, v10, [B

    .line 25
    .local v4, "keyArray":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 26
    .local v0, "ex":I
    new-instance v6, Lcom/cmdm/control/util/encry/SHA1;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/SHA1;-><init>()V

    .line 27
    .local v6, "sha1":Lcom/cmdm/control/util/encry/SHA1;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v7

    .line 29
    .local v7, "temp":[B
    array-length v0, v7

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 39
    :cond_0
    move v1, v0

    :goto_1
    if-lt v1, v10, :cond_3

    .line 42
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v10, :cond_4

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 46
    invoke-static {v2, v9}, Lcom/cmdm/control/util/encry/HMACSHA1;->a([B[B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v8

    .line 49
    .local v8, "tempResult":[B
    invoke-static {v5, v8}, Lcom/cmdm/control/util/encry/HMACSHA1;->a([B[B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/cmdm/control/util/encry/SHA1;->getDigestOfBytes([B)[B

    move-result-object v9

    return-object v9

    .line 31
    .end local v3    # "j":I
    .end local v8    # "tempResult":[B
    :cond_1
    aget-byte v9, v7, v1

    aput-byte v9, v4, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    .end local v7    # "temp":[B
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 35
    .restart local v7    # "temp":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v9, v7

    if-ge v1, v9, :cond_0

    .line 36
    aget-byte v9, v7, v1

    aput-byte v9, v4, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 40
    :cond_3
    const/4 v9, 0x0

    aput-byte v9, v4, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    .restart local v3    # "j":I
    :cond_4
    aget-byte v9, v4, v3

    xor-int/lit8 v9, v9, 0x36

    int-to-byte v9, v9

    aput-byte v9, v2, v3

    .line 44
    aget-byte v9, v4, v3

    xor-int/lit8 v9, v9, 0x5c

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "charSet"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    check-cast v0, [B

    .line 76
    .local v0, "byteHMAC":[B
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 77
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 78
    const-string v5, "HmacSHA1"

    .line 77
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 79
    .local v3, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 81
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
