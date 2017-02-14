.class final Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DH_ServerKeyExchange"
.end annotation


# static fields
.field private static final dhKeyExchangeFix:Z


# instance fields
.field private dh_Ys:[B

.field private dh_g:[B

.field private dh_p:[B

.field private preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private signature:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "com.sun.net.ssl.dhKeyExchangeFix"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/DHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    iput-object p7, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {p0, p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->setValues(Lsun/security/ssl/DHCrypt;)V

    iget v1, p7, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    invoke-direct {p0, v0, p3, p4}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DSA"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/DHCrypt;Lsun/security/ssl/ProtocolVersion;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-direct {p0, p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->setValues(Lsun/security/ssl/DHCrypt;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BILjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/HandshakeInStream;",
            "Ljava/security/PublicKey;",
            "[B[BI",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    move-object/from16 v0, p7

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    new-instance v6, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    const/4 v10, 0x1

    invoke-direct {v8, v10, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    const/4 v11, 0x1

    invoke-direct {v9, v11, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v6, v7, v8, v9}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v6}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V

    move-object/from16 v0, p7

    iget v6, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v2

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v7, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    :cond_1
    sget-boolean v6, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v5

    :goto_0
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    iget v6, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    :goto_1
    invoke-virtual {v3, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v3, p3, v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "Server D-H key verification failed"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    sub-int p5, p5, v6

    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    sub-int p5, p5, v6

    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    sub-int p5, p5, v6

    move/from16 v0, p5

    new-array v5, v0, [B

    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "DSA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "RSA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "neither an RSA or a DSA key"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    return-void
.end method

.method private setValues(Lsun/security/ssl/DHCrypt;)V
    .locals 1

    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getBase()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    return-void
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    array-length v0, v1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    array-length v0, v1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    array-length v0, v1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    return-void
.end method


# virtual methods
.method getBase()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method getModulus()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method getServerPublicKey()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method messageLength()I
    .locals 3

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x6

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-boolean v1, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "*** Diffie-Hellman ServerKeyExchange"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DH Modulus"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    const-string/jumbo v0, "DH Base"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    const-string/jumbo v0, "Server DH Public Key"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    if-nez v0, :cond_1

    const-string/jumbo v0, "Anonymous"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Signature Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "Signed with a DSA or RSA public key"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    :cond_0
    sget-boolean v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
