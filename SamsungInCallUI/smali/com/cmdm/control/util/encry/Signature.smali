.class public Lcom/cmdm/control/util/encry/Signature;
.super Ljava/lang/Object;


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
    .locals 4

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Signature;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v1}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v0, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v2, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v2}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [B

    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/util/encry/Base64Code;->decodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "signature"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1
.end method

.method public static getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v1}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v0, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v2, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v2}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedHarassMobileBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMEISignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v1}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v0, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v2, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v2}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPasswordSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v1}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    const-string v0, "E997AAE7A780E6BF80E6B4BB2D534D53"

    new-instance v2, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v2}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-string v0, "\u7edf\u4e00\u767b\u5f55sdk\u9274\u6743\u8ba4\u8bc1\u65b9\u5f0f"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9274\u6743\u65b9\u5f0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u53f7\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/cmdm/control/util/client/AppConfigDP;->api:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/cmdm/control/util/encry/UTF8Code;->utf8_code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/cmdm/control/util/encry/HMACSHA1;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedByteBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object p2, p0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

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

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/cmdm/control/util/encry/Signature;->a(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
