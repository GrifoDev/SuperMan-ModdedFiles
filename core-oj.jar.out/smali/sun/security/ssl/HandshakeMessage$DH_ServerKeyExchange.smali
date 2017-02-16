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

    .prologue
    .line 685
    const-string/jumbo v0, "com.sun.net.ssl.dhKeyExchangeFix"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 684
    sput-boolean v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    .line 681
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/DHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    .locals 3
    .param p1, "obj"    # Lsun/security/ssl/DHCrypt;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "clntNonce"    # [B
    .param p4, "svrNonce"    # [B
    .param p5, "sr"    # Ljava/security/SecureRandom;
    .param p6, "signAlgorithm"    # Lsun/security/ssl/SignatureAndHashAlgorithm;
    .param p7, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 722
    iput-object p7, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 725
    invoke-direct {p0, p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->setValues(Lsun/security/ssl/DHCrypt;)V

    .line 728
    iget v1, p7, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    .line 729
    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 730
    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 740
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p2, p5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 741
    invoke-direct {p0, v0, p3, p4}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 742
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    .line 720
    return-void

    .line 732
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 733
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    const-string/jumbo v1, "DSA"

    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 736
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/DHCrypt;Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "obj"    # Lsun/security/ssl/DHCrypt;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    const/4 v0, 0x0

    .line 703
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 704
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 705
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 708
    invoke-direct {p0, p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->setValues(Lsun/security/ssl/DHCrypt;)V

    .line 709
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    .line 703
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BILjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 12
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "clntNonce"    # [B
    .param p4, "svrNonce"    # [B
    .param p5, "messageSize"    # I
    .param p7, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
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

    .prologue
    .line 772
    .local p6, "localSupportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 778
    move-object/from16 v0, p7

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 781
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    .line 782
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    .line 783
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    .line 784
    new-instance v6, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 785
    new-instance v8, Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    const/4 v10, 0x1

    invoke-direct {v8, v10, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 786
    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    const/4 v11, 0x1

    invoke-direct {v9, v11, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 784
    invoke-direct {v6, v7, v8, v9}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v6}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V

    .line 789
    move-object/from16 v0, p7

    iget v6, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_0

    .line 790
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v2

    .line 791
    .local v2, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v4

    .line 794
    .local v4, "signature":I
    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v6

    .line 793
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 798
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 797
    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 799
    new-instance v6, Ljavax/net/ssl/SSLHandshakeException;

    .line 800
    const-string/jumbo v7, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    .line 799
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 804
    .end local v2    # "hash":I
    .end local v4    # "signature":I
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 809
    :cond_1
    sget-boolean v6, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    if-eqz v6, :cond_2

    .line 810
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v5

    .line 821
    .local v5, "signature":[B
    :goto_0
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p7

    iget v6, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_3

    .line 824
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    .line 823
    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 835
    .local v3, "sig":Ljava/security/Signature;
    :goto_1
    invoke-virtual {v3, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 836
    move-object/from16 v0, p4

    invoke-direct {p0, v3, p3, v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 838
    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    if-nez v6, :cond_6

    .line 839
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "Server D-H key verification failed"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 812
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "sig":Ljava/security/Signature;
    .end local v5    # "signature":[B
    :cond_2
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    sub-int p5, p5, v6

    .line 813
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    sub-int p5, p5, v6

    .line 814
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    sub-int p5, p5, v6

    .line 816
    move/from16 v0, p5

    new-array v5, v0, [B

    .line 817
    .restart local v5    # "signature":[B
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    goto :goto_0

    .line 826
    .restart local v1    # "algorithm":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "DSA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 827
    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .restart local v3    # "sig":Ljava/security/Signature;
    goto :goto_1

    .line 828
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_4
    const-string/jumbo v6, "RSA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 829
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v3

    .restart local v3    # "sig":Ljava/security/Signature;
    goto :goto_1

    .line 831
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_5
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "neither an RSA or a DSA key"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 776
    .restart local v3    # "sig":Ljava/security/Signature;
    :cond_6
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V
    .locals 7
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 750
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 754
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 755
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 757
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    .line 758
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    .line 759
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    .line 760
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 761
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 762
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 760
    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lsun/security/util/KeyUtil;->validate(Ljava/security/spec/KeySpec;)V

    .line 764
    iput-object v6, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    .line 752
    return-void
.end method

.method private setValues(Lsun/security/ssl/DHCrypt;)V
    .locals 1
    .param p1, "obj"    # Lsun/security/ssl/DHCrypt;

    .prologue
    .line 885
    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    .line 886
    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getBase()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    .line 887
    invoke-virtual {p1}, Lsun/security/ssl/DHCrypt;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    .line 884
    return-void
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 2
    .param p1, "sig"    # Ljava/security/Signature;
    .param p2, "clntNonce"    # [B
    .param p3, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 866
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    .line 868
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    array-length v0, v1

    .line 869
    .local v0, "tmp":I
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    .line 870
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    .line 871
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    .line 873
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    array-length v0, v1

    .line 874
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    .line 875
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    .line 876
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    .line 878
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    array-length v0, v1

    .line 879
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    .line 880
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update(B)V

    .line 881
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    .line 862
    return-void
.end method


# virtual methods
.method getBase()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 850
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method getModulus()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 845
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method getServerPublicKey()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 855
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method messageLength()I
    .locals 3

    .prologue
    .line 893
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x6

    .line 894
    .local v0, "temp":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 895
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 897
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    .line 899
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    move-result v1

    add-int/2addr v0, v1

    .line 902
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 903
    sget-boolean v1, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    if-eqz v1, :cond_1

    .line 904
    add-int/lit8 v0, v0, 0x2

    .line 908
    :cond_1
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
    .line 931
    const-string/jumbo v0, "*** Diffie-Hellman ServerKeyExchange"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    sget-object v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const-string/jumbo v0, "DH Modulus"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 935
    const-string/jumbo v0, "DH Base"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 936
    const-string/jumbo v0, "Server DH Public Key"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 938
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    if-nez v0, :cond_1

    .line 939
    const-string/jumbo v0, "Anonymous"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_2

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Signature Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 946
    :cond_2
    const-string/jumbo v0, "Signed with a DSA or RSA public key"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_p:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 913
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_g:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 914
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dh_Ys:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 916
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    .line 918
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 919
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 922
    :cond_0
    sget-boolean v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->dhKeyExchangeFix:Z

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->signature:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
