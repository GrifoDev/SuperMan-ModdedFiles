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

    .prologue
    .line 91
    const/4 v0, 0x2

    sput v0, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    .line 78
    return-void
.end method

.method constructor <init>(ILjava/security/SecureRandom;)V
    .locals 5
    .param p1, "keyLength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    :try_start_0
    const-string/jumbo v3, "DiffieHellman"

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 99
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v1, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 101
    invoke-direct {p0, v1}, Lsun/security/ssl/DHCrypt;->generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v2

    .line 102
    .local v2, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    if-nez v2, :cond_0

    .line 103
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate DH keypair"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate DH keypair"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 106
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;

    .line 107
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    .line 108
    invoke-virtual {v2}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "base"    # Ljava/math/BigInteger;
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    .line 123
    iput-object p2, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    .line 125
    :try_start_0
    const-string/jumbo v4, "DiffieHellman"

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 126
    .local v1, "kpg":Ljava/security/KeyPairGenerator;
    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v2, p1, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 127
    .local v2, "params":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1, v2, p3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 129
    invoke-direct {p0, v1}, Lsun/security/ssl/DHCrypt;->generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v3

    .line 130
    .local v3, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    if-nez v3, :cond_0

    .line 131
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Could not generate DH keypair"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .end local v3    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Could not generate DH keypair"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 134
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "kpg":Ljava/security/KeyPairGenerator;
    .restart local v2    # "params":Ljavax/crypto/spec/DHParameterSpec;
    .restart local v3    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    return-void
.end method

.method private generateDHPublicKeySpec(Ljava/security/KeyPairGenerator;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 6
    .param p1, "kpg"    # Ljava/security/KeyPairGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 224
    .local v0, "doExtraValiadtion":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v5, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    if-gt v1, v5, :cond_3

    .line 225
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 226
    .local v3, "kp":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    iput-object v5, p0, Lsun/security/ssl/DHCrypt;->privateKey:Ljava/security/PrivateKey;

    .line 227
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v5}, Lsun/security/ssl/DHCrypt;->getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;

    move-result-object v4

    .line 230
    .local v4, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    invoke-static {v4}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    return-object v4

    .line 223
    .end local v0    # "doExtraValiadtion":Z
    .end local v1    # "i":I
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "doExtraValiadtion":Z
    goto :goto_0

    .line 233
    .restart local v1    # "i":I
    .restart local v3    # "kp":Ljava/security/KeyPair;
    .restart local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v2

    .line 234
    .local v2, "ivke":Ljava/security/InvalidKeyException;
    sget v5, Lsun/security/ssl/DHCrypt;->MAX_FAILOVER_TIMES:I

    if-ne v1, v5, :cond_2

    .line 235
    throw v2

    .line 224
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v2    # "ivke":Ljava/security/InvalidKeyException;
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method static getDHPublicKeySpec(Ljava/security/PublicKey;)Ljavax/crypto/spec/DHPublicKeySpec;
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 142
    instance-of v4, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v4, :cond_0

    move-object v0, p0

    .line 143
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 144
    .local v0, "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    .line 145
    .local v3, "params":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 146
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v7

    .line 145
    invoke-direct {v4, v5, v6, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4

    .line 149
    .end local v0    # "dhKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v3    # "params":Ljavax/crypto/spec/DHParameterSpec;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "DH"

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 150
    .local v2, "factory":Ljava/security/KeyFactory;
    const-class v4, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {v2, p0, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/DHPublicKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 151
    .end local v2    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;
    .locals 8
    .param p1, "peerPublicValue"    # Ljava/math/BigInteger;
    .param p2, "keyIsValidated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    const-string/jumbo v6, "DiffieHellman"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 195
    .local v3, "kf":Ljava/security/KeyFactory;
    new-instance v5, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v6, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    iget-object v7, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    invoke-direct {v5, p1, v6, v7}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 196
    .local v5, "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    invoke-virtual {v3, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 197
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v6, "DiffieHellman"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    .line 200
    .local v2, "ka":Ljavax/crypto/KeyAgreement;
    if-nez p2, :cond_0

    .line 201
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/security/util/KeyUtil;->isOracleJCEProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    :cond_0
    :goto_0
    iget-object v6, p0, Lsun/security/ssl/DHCrypt;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v6}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 211
    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 212
    const-string/jumbo v6, "TlsPremasterSecret"

    invoke-virtual {v2, v6}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 203
    :cond_1
    :try_start_1
    invoke-static {v5}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 206
    .local v1, "ike":Ljava/security/InvalidKeyException;
    :try_start_2
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 213
    .end local v1    # "ike":Ljava/security/InvalidKeyException;
    .end local v2    # "ka":Ljavax/crypto/KeyAgreement;
    .end local v3    # "kf":Ljava/security/KeyFactory;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    .end local v5    # "spec":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Could not generate secret"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method getBase()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->base:Ljava/math/BigInteger;

    return-object v0
.end method

.method getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method getPublicKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lsun/security/ssl/DHCrypt;->publicValue:Ljava/math/BigInteger;

    return-object v0
.end method
