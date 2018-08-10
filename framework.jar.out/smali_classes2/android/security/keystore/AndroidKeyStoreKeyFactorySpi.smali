.class public Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "AndroidKeyStoreKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v7, "key == null"

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v6, :cond_1

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". This KeyFactory supports only Android Keystore asymmetric keys"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v7, "keySpecClass == null"

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-class v6, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-class v6, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_3
    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v6, :cond_4

    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". KeyInfo can be obtained only for Android Keystore private keys"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    move-object v3, p1

    check-cast v3, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStorePrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-class v6, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStorePrivateKey;->getUid()I

    move-result v7

    invoke-static {v6, v1, v2, v7}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Landroid/security/keystore/KeyInfo;

    move-result-object v4

    :cond_5
    :goto_0
    return-object v4

    :cond_6
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid key alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    const-class v6, Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStorePrivateKey;->getUid()I

    move-result v7

    invoke-static {v6, v1, v2, v7}, Landroid/security/keystore/AndroidKeyStoreSecretKeyFactorySpi;->getKnoxKeyInfo(Landroid/security/KeyStore;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/knox/keystore/KnoxKeyInfo;

    move-result-object v4

    goto :goto_0

    :cond_8
    const-class v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-nez v6, :cond_9

    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". X509EncodedKeySpec can be obtained only for Android Keystore public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " keys"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object v4

    :cond_a
    const-class v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_b

    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v7, "Key material export of Android Keystore private keys is not supported"

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v7, "Cannot export key material of public key in PKCS#8 format. Only X.509 format (X509EncodedKeySpec) supported for public keys."

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    const-class v6, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    if-eqz v6, :cond_d

    move-object v5, p1

    check-cast v5, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4

    :cond_d
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Obtaining RSAPublicKeySpec not supported for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_e

    const-string/jumbo v6, "private"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " key"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    const-string/jumbo v6, "public"

    goto :goto_1

    :cond_f
    const-class v6, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    if-eqz v6, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v4

    :cond_10
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Obtaining ECPublicKeySpec not supported for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    instance-of v6, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v6, :cond_11

    const-string/jumbo v6, "private"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " key"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_11
    const-string/jumbo v6, "public"

    goto :goto_2

    :cond_12
    new-instance v6, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported key spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "To import a key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1
.end method
