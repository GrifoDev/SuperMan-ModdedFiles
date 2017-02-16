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
    .param p1, "ephemeralKey"    # Ljava/security/PublicKey;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "clntNonce"    # Lsun/security/ssl/RandomCookie;
    .param p4, "svrNonce"    # Lsun/security/ssl/RandomCookie;
    .param p5, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 593
    invoke-static {p1}, Lsun/security/ssl/JsseJce;->getRSAPublicKeySpec(Ljava/security/PublicKey;)Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v0

    .line 594
    .local v0, "rsaKey":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    .line 595
    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    .line 596
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    .line 597
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 598
    iget-object v1, p3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v2, p4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    invoke-direct {p0, v1, v2}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->updateSignature([B[B)V

    .line 599
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    .line 592
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 609
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    .line 610
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    .line 611
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    .line 612
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    .line 608
    return-void
.end method

.method private updateSignature([B[B)V
    .locals 3
    .param p1, "clntNonce"    # [B
    .param p2, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 566
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 568
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    array-length v0, v1

    .line 569
    .local v0, "tmp":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    .line 570
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    .line 571
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 573
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    array-length v0, v1

    .line 574
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    .line 575
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update(B)V

    .line 576
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 562
    return-void
.end method


# virtual methods
.method getPublicKey()Ljava/security/PublicKey;
    .locals 7

    .prologue
    .line 621
    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 623
    .local v1, "kfac":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    .line 624
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 625
    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 623
    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 626
    .local v2, "kspec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 627
    .end local v1    # "kfac":Ljava/security/KeyFactory;
    .end local v2    # "kspec":Ljava/security/spec/RSAPublicKeySpec;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method messageLength()I
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 646
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    array-length v1, v1

    .line 645
    add-int/2addr v0, v1

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    const-string/jumbo v0, "*** RSA ServerKeyExchange"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    sget-object v0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const-string/jumbo v0, "RSA Modulus"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 660
    const-string/jumbo v0, "RSA Public Exponent"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 655
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_modulus:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 651
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->rsa_exponent:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 652
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 649
    return-void
.end method

.method verify(Ljava/security/PublicKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;)Z
    .locals 2
    .param p1, "certifiedKey"    # Ljava/security/PublicKey;
    .param p2, "clntNonce"    # Lsun/security/ssl/RandomCookie;
    .param p3, "svrNonce"    # Lsun/security/ssl/RandomCookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 640
    iget-object v0, p2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v1, p3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    invoke-direct {p0, v0, v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->updateSignature([B[B)V

    .line 641
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signature:Ljava/security/Signature;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->signatureBytes:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
