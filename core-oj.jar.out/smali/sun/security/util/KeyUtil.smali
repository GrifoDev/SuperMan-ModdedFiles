.class public final Lsun/security/util/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getKeySize(Ljava/security/Key;)I
    .locals 13
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 59
    const/4 v9, -0x1

    .line 61
    .local v9, "size":I
    instance-of v12, p0, Lsun/security/util/Length;

    if-eqz v12, :cond_0

    .line 63
    :try_start_0
    move-object v0, p0

    check-cast v0, Lsun/security/util/Length;

    move-object v8, v0

    .line 64
    .local v8, "ruler":Lsun/security/util/Length;
    invoke-interface {v8}, Lsun/security/util/Length;->length()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 69
    .end local v8    # "ruler":Lsun/security/util/Length;
    :goto_0
    if-ltz v9, :cond_0

    .line 70
    return v9

    .line 75
    :cond_0
    instance-of v12, p0, Ljavax/crypto/SecretKey;

    if-eqz v12, :cond_2

    move-object v10, p0

    .line 76
    check-cast v10, Ljavax/crypto/SecretKey;

    .line 77
    .local v10, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v12, "RAW"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    if-eqz v12, :cond_1

    .line 79
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    array-length v12, v12

    mul-int/lit8 v9, v12, 0x8

    .line 113
    .end local v1    # "format":Ljava/lang/String;
    .end local v10    # "sk":Ljavax/crypto/SecretKey;
    :cond_1
    :goto_1
    return v9

    .line 82
    :cond_2
    instance-of v12, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v12, :cond_3

    move-object v6, p0

    .line 83
    check-cast v6, Ljava/security/interfaces/RSAKey;

    .line 84
    .local v6, "pubk":Ljava/security/interfaces/RSAKey;
    invoke-interface {v6}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 85
    .end local v6    # "pubk":Ljava/security/interfaces/RSAKey;
    :cond_3
    instance-of v12, p0, Ljava/security/interfaces/ECKey;

    if-eqz v12, :cond_4

    move-object v5, p0

    .line 86
    check-cast v5, Ljava/security/interfaces/ECKey;

    .line 87
    .local v5, "pubk":Ljava/security/interfaces/ECKey;
    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 93
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 96
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "pubk":Ljava/security/interfaces/ECKey;
    :cond_4
    instance-of v12, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v12, :cond_5

    move-object v4, p0

    .line 97
    check-cast v4, Ljava/security/interfaces/DSAKey;

    .line 98
    .local v4, "pubk":Ljava/security/interfaces/DSAKey;
    invoke-interface {v4}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 104
    .local v2, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 107
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    .end local v4    # "pubk":Ljava/security/interfaces/DSAKey;
    :cond_5
    instance-of v12, p0, Ljavax/crypto/interfaces/DHKey;

    if-eqz v12, :cond_1

    move-object v7, p0

    .line 108
    check-cast v7, Ljavax/crypto/interfaces/DHKey;

    .line 109
    .local v7, "pubk":Ljavax/crypto/interfaces/DHKey;
    invoke-interface {v7}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 65
    .end local v7    # "pubk":Ljavax/crypto/interfaces/DHKey;
    :catch_0
    move-exception v11

    .local v11, "usoe":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static final isOracleJCEProvider(Ljava/lang/String;)Z
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p0, :cond_1

    const-string/jumbo v0, "SunJCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string/jumbo v0, "SunPKCS11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final validate(Ljava/security/Key;)V
    .locals 2
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    .line 131
    const-string/jumbo v1, "The key to be validated cannot be null"

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    .line 135
    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p0    # "key":Ljava/security/Key;
    invoke-static {p0}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljavax/crypto/interfaces/DHPublicKey;)V

    .line 128
    :cond_1
    return-void
.end method

.method public static final validate(Ljava/security/spec/KeySpec;)V
    .locals 2
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    .line 155
    const-string/jumbo v1, "The key spec to be validated cannot be null"

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    instance-of v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_1

    .line 159
    check-cast p0, Ljavax/crypto/spec/DHPublicKeySpec;

    .end local p0    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-static {p0}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljavax/crypto/spec/DHPublicKeySpec;)V

    .line 152
    :cond_1
    return-void
.end method

.method private static validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "g"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 210
    .local v0, "leftOpen":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 211
    .local v1, "rightOpen":Ljava/math/BigInteger;
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 212
    new-instance v2, Ljava/security/InvalidKeyException;

    .line 213
    const-string/jumbo v3, "Diffie-Hellman public key is too small"

    .line 212
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_0
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 216
    new-instance v2, Ljava/security/InvalidKeyException;

    .line 217
    const-string/jumbo v3, "Diffie-Hellman public key is too large"

    .line 216
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_1
    return-void
.end method

.method private static validateDHPublicKey(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 4
    .param p0, "publicKey"    # Ljavax/crypto/interfaces/DHPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    .line 192
    .local v2, "paramSpec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 193
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    .local v0, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    .line 196
    .local v3, "y":Ljava/math/BigInteger;
    invoke-static {v1, v0, v3}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 189
    return-void
.end method

.method private static validateDHPublicKey(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3
    .param p0, "publicKeySpec"    # Ljavax/crypto/spec/DHPublicKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v2

    .line 201
    invoke-static {v0, v1, v2}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 200
    return-void
.end method
