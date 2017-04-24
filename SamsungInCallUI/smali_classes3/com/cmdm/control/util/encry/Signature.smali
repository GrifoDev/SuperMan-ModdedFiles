.class public Lcom/cmdm/control/util/encry/Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ef:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
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

.method public static cipherSSO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/cmdm/control/util/encry/Signature;->toHex([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-eqz p0, :cond_0

    const-string v9, ""

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, [B

    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/util/encry/Base64Code;->decodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9, v3}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    const-string v9, "signature"

    invoke-static {v9, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v8

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v8, ""

    goto :goto_1
.end method

.method public static getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedHarassMobileBase64([B)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMEISignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64([B)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPasswordSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64([B)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v2, ""

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "7"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p2

    :goto_0
    const-string v4, "\u7edf\u4e00\u767b\u5f55sdk\u9274\u6743\u8ba4\u8bc1\u65b9\u5f0f"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u9274\u6743\u65b9\u5f0f:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u53f7\u7801\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/cmdm/control/util/client/AppConfigDP;->api:Ljava/lang/String;

    invoke-static {p3, v4}, Lcom/cmdm/control/util/encry/UTF8Code;->utf8_code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/cmdm/control/util/encry/HMACSHA1;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedByteBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    move-object v2, p0

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, ""

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Signature;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/cmdm/control/util/encry/Signature;->a(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
