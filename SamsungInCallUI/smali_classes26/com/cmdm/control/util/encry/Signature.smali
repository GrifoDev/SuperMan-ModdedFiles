.class public Lcom/cmdm/control/util/encry/Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ef:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 200
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

    .line 201
    return-void
.end method

.method public static cipherSSO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dataPassword"    # Ljava/lang/String;
    .param p1, "cleartext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 177
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 178
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 179
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 180
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
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    const-string v9, ""

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 123
    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    .line 124
    .local v5, "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    .line 125
    .local v4, "key":Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    .line 126
    .local v6, "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    .line 128
    .local v0, "bcd":[B
    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    .line 130
    .local v3, "k":Ljava/security/Key;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 132
    .local v2, "encryptData":[B
    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/util/encry/Base64Code;->decodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "obj":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9, v3}, Lcom/cmdm/control/util/encry/AESCode;->decrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .end local v7    # "obj":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 139
    .local v8, "signature":Ljava/lang/String;
    const-string v9, "signature"

    invoke-static {v9, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v0    # "bcd":[B
    .end local v2    # "encryptData":[B
    .end local v3    # "k":Ljava/security/Key;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    .end local v6    # "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    .end local v8    # "signature":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 134
    .restart local v0    # "bcd":[B
    .restart local v2    # "encryptData":[B
    .restart local v3    # "k":Ljava/security/Key;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    .restart local v6    # "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0    # "bcd":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "encryptData":[B
    .end local v3    # "k":Ljava/security/Key;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    .end local v6    # "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    :cond_0
    const-string v8, ""

    goto :goto_1
.end method

.method public static getHarassMobileSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    .line 98
    .local v5, "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    .line 99
    .local v4, "key":Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    .line 100
    .local v6, "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    .line 102
    .local v0, "bcd":[B
    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    .line 103
    .local v3, "k":Ljava/security/Key;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 105
    .local v2, "encryptData":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    :goto_0
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedHarassMobileBase64([B)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "signature":Ljava/lang/String;
    return-object v7

    .line 106
    .end local v7    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMEISignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "IMEI"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    .line 149
    .local v5, "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    .line 150
    .local v4, "key":Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    .line 151
    .local v6, "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    .line 153
    .local v0, "bcd":[B
    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    .line 154
    .local v3, "k":Ljava/security/Key;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 156
    .local v2, "encryptData":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    :goto_0
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64([B)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "signature":Ljava/lang/String;
    return-object v7

    .line 157
    .end local v7    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPasswordSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v5, Lcom/cmdm/control/util/encry/AESCode;

    invoke-direct {v5}, Lcom/cmdm/control/util/encry/AESCode;-><init>()V

    .line 69
    .local v5, "mAESCode":Lcom/cmdm/control/util/encry/AESCode;
    const-string v4, "E997AAE7A780E6BF80E6B4BB2D534D53"

    .line 70
    .local v4, "key":Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/util/encry/BCDCode;

    invoke-direct {v6}, Lcom/cmdm/control/util/encry/BCDCode;-><init>()V

    .line 71
    .local v6, "mBCDCode":Lcom/cmdm/control/util/encry/BCDCode;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/cmdm/control/util/encry/BCDCode;->ASCII_To_BCD([BI)[B

    move-result-object v0

    .line 73
    .local v0, "bcd":[B
    invoke-virtual {v5, v0}, Lcom/cmdm/control/util/encry/AESCode;->toKey([B)Ljava/security/Key;

    move-result-object v3

    .line 74
    .local v3, "k":Ljava/security/Key;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 76
    .local v2, "encryptData":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Lcom/cmdm/control/util/encry/AESCode;->encrypt([BLjava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    :goto_0
    invoke-static {v2}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64([B)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "signature":Ljava/lang/String;
    return-object v7

    .line 77
    .end local v7    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "loginMode"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    const-string v2, ""

    .line 35
    .local v2, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    const-string v4, "7"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    move-object v2, p2

    .line 41
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

    .line 42
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    sget-object v4, Lcom/cmdm/control/util/client/AppConfigDP;->api:Ljava/lang/String;

    invoke-static {p3, v4}, Lcom/cmdm/control/util/encry/UTF8Code;->utf8_code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v4, v2}, Lcom/cmdm/control/util/encry/HMACSHA1;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 45
    .local v0, "b":[B
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64Code;->encodedByteBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 52
    .end local v0    # "b":[B
    .end local v2    # "key":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 39
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    move-object v2, p0

    goto :goto_0

    .line 48
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 50
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-string v3, ""

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmdm/control/util/encry/Signature;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const-string v2, ""

    .line 194
    :goto_0
    return-object v2

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/cmdm/control/util/encry/Signature;->a(Ljava/lang/StringBuffer;B)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
