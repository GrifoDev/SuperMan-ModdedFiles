.class public final Lsun/security/util/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getKeySize(Ljava/security/Key;)I
    .locals 13

    const/4 v9, -0x1

    instance-of v12, p0, Lsun/security/util/Length;

    if-eqz v12, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lsun/security/util/Length;

    move-object v8, v0

    invoke-interface {v8}, Lsun/security/util/Length;->length()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_0
    if-ltz v9, :cond_0

    return v9

    :cond_0
    instance-of v12, p0, Ljavax/crypto/SecretKey;

    if-eqz v12, :cond_2

    move-object v10, p0

    check-cast v10, Ljavax/crypto/SecretKey;

    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "RAW"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    array-length v12, v12

    mul-int/lit8 v9, v12, 0x8

    :cond_1
    :goto_1
    return v9

    :cond_2
    instance-of v12, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v12, :cond_3

    move-object v6, p0

    check-cast v6, Ljava/security/interfaces/RSAKey;

    invoke-interface {v6}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    :cond_3
    instance-of v12, p0, Ljava/security/interfaces/ECKey;

    if-eqz v12, :cond_4

    move-object v5, p0

    check-cast v5, Ljava/security/interfaces/ECKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    :cond_4
    instance-of v12, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v12, :cond_5

    move-object v4, p0

    check-cast v4, Ljava/security/interfaces/DSAKey;

    invoke-interface {v4}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    :cond_5
    instance-of v12, p0, Ljavax/crypto/interfaces/DHKey;

    if-eqz v12, :cond_1

    move-object v7, p0

    check-cast v7, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {v7}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public static final isOracleJCEProvider(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string/jumbo v0, "SunJCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SunPKCS11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The key to be validated cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-static {p0}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljavax/crypto/interfaces/DHPublicKey;)V

    :cond_1
    return-void
.end method

.method public static final validate(Ljava/security/spec/KeySpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The key spec to be validated cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-static {p0}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljavax/crypto/spec/DHPublicKeySpec;)V

    :cond_1
    return-void
.end method

.method private static validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Diffie-Hellman public key is too small"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "Diffie-Hellman public key is too large"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method private static validateDHPublicKey(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method private static validateDHPublicKey(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lsun/security/util/KeyUtil;->validateDHPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method
