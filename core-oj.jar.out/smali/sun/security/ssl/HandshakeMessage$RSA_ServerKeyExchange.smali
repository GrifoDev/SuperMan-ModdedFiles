.class final Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RSA_ServerKeyExchange"
.end annotation


# instance fields
.field private rsa_exponent:[B

.field private rsa_modulus:[B

.field private signature:Ljava/security/Signature;

.field private signatureBytes:[B


# direct methods
.method constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    invoke-static {p1}, Lsun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    iget-object v1, p3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v2, p4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    invoke-direct {p0, v1, v2}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->updateSignature([B[B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    return-void
.end method

.method private updateSignature([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    array-length v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    array-length v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    return-void
.end method


# virtual methods
.method getPublicKey()Ljava/security/PublicKey;
    .locals 7

    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method messageLength()I
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "*** RSA ServerKeyExchange"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RSA Modulus"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    const-string/jumbo v0, "RSA Public Exponent"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    return-void
.end method

.method verify(Ljava/security/PublicKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v0, p2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v1, p3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->updateSignature([B[B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
