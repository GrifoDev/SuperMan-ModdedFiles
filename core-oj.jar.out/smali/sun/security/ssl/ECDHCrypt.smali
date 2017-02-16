.class final Lsun/security/ssl/ECDHCrypt;
.super Ljava/lang/Object;
.source "ECDHCrypt.java"


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "curveName"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    :try_start_0
    const-string/jumbo v4, "EC"

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 61
    .local v2, "kpg":Ljava/security/KeyPairGenerator;
    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v3, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, "params":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v2, v3, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 63
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 64
    .local v1, "kp":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    .line 65
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    iput-object v4, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 66
    .end local v1    # "kp":Ljava/security/KeyPair;
    .end local v2    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v3    # "params":Ljava/security/spec/ECGenParameterSpec;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Could not generate DH keypair"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    .line 54
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .end local p2    # "publicKey":Ljava/security/PublicKey;
    iput-object p2, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    :try_start_0
    const-string/jumbo v3, "EC"

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 75
    .local v2, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 76
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 77
    .local v1, "kp":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    .line 78
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    iput-object v3, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 79
    .end local v1    # "kp":Ljava/security/KeyPair;
    .end local v2    # "kpg":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate DH keypair"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p1, "peerPublicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v2, "ECDH"

    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    .line 95
    .local v1, "ka":Ljavax/crypto/KeyAgreement;
    iget-object v2, p0, Lsun/security/ssl/ECDHCrypt;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 97
    const-string/jumbo v2, "TlsPremasterSecret"

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 98
    .end local v1    # "ka":Ljavax/crypto/KeyAgreement;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Could not generate secret"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method getAgreedSecret([B)Ljavax/crypto/SecretKey;
    .locals 9
    .param p1, "encodedPoint"    # [B

    .prologue
    .line 106
    :try_start_0
    iget-object v7, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v7}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 107
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v7

    invoke-static {p1, v7}, Lsun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 108
    .local v5, "point":Ljava/security/spec/ECPoint;
    const-string/jumbo v7, "EC"

    invoke-static {v7}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 109
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v6, v5, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 110
    .local v6, "spec":Ljava/security/spec/ECPublicKeySpec;
    invoke-virtual {v2, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 111
    .local v4, "peerPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v4}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 114
    .end local v2    # "kf":Ljava/security/KeyFactory;
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v4    # "peerPublicKey":Ljava/security/PublicKey;
    .end local v5    # "point":Ljava/security/spec/ECPoint;
    .end local v6    # "spec":Ljava/security/spec/ECPublicKeySpec;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Could not generate secret"

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Could not generate secret"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lsun/security/ssl/ECDHCrypt;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method
