.class final Lsun/security/ssl/DHCrypt;
.super Ljava/lang/Object;
.source "DHCrypt.java"


# static fields
.field private static MAX_FAILOVER_TIMES:I


# instance fields
.field private base:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private privateKey:Ljava/security/PrivateKey;

.field private publicValue:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    return-void
.end method

.method constructor <init>(ILjava/security/SecureRandom;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v3, "DiffieHellman"

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/DHCrypt;->generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate DH keypair"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate DH keypair"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    iput-object p2, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    :try_start_0
    const-string/jumbo v4, "DiffieHellman"

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v2, p1, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2, p3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/DHCrypt;->generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Could not generate DH keypair"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Could not generate DH keypair"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    sget v5, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    if-gt v1, v5, :cond_3

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    iput-object v5, p0, Lsun/security/ssl/DHCrypt;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v5}, Lsun/security/ssl/DHCrypt;->getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v4

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v4}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v4

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget v5, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    if-ne v1, v5, :cond_2

    throw v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method static getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 8

    instance-of v4, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v4, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v4, "DH"

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    const-class v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v2, p0, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/DHPublicKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v6, "DiffieHellman"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v6, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    iget-object v7, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    invoke-direct {v5, p1, v6, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    const-string/jumbo v6, "DiffieHellman"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    if-nez p2, :cond_0

    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    iget-object v6, p0, Lsun/security/ssl/DHCrypt;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v6}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    const-string/jumbo v6, "TlsPremasterSecret"

    invoke-virtual {v2, v6}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    :cond_1
    :try_start_1
    invoke-static {v5}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Could not generate secret"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method getBase()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    return-object v0
.end method

.method getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method getPublicKey()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;

    return-object v0
.end method
