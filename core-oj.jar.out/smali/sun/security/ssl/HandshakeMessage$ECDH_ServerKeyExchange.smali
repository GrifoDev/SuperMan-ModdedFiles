.class final Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;
.super Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECDH_ServerKeyExchange"
.end annotation


# static fields
.field private static final CURVE_EXPLICIT_CHAR2:I = 0x2

.field private static final CURVE_EXPLICIT_PRIME:I = 0x1

.field private static final CURVE_NAMED_CURVE:I = 0x3


# instance fields
.field private curveId:I

.field private pointBytes:[B

.field private preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private publicKey:Ljava/security/interfaces/ECPublicKey;

.field private signatureBytes:[B


# direct methods
.method constructor <init>(Lsun/security/ssl/ECDHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    .locals 5
    .param p1, "obj"    # Lsun/security/ssl/ECDHCrypt;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
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
    .line 984
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 989
    iput-object p7, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 991
    invoke-virtual {p1}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 992
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 993
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 994
    .local v1, "point":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v1, v3}, Lsun/security/ssl/JsseJce;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    .line 995
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    move-result v3

    iput v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    .line 997
    if-nez p2, :cond_0

    .line 999
    return-void

    .line 1003
    :cond_0
    iget v3, p7, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_1

    .line 1004
    iput-object p6, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1005
    invoke-virtual {p6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 1009
    .local v2, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 1011
    invoke-direct {p0, v2, p3, p4}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 1012
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    .line 987
    return-void

    .line 1007
    .end local v2    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .restart local v2    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BLjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 12
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "signingKey"    # Ljava/security/PublicKey;
    .param p3, "clntNonce"    # [B
    .param p4, "svrNonce"    # [B
    .param p6, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/HandshakeInStream;",
            "Ljava/security/PublicKey;",
            "[B[B",
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
    .line 1018
    .local p5, "localSupportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;-><init>()V

    .line 1024
    move-object/from16 v0, p6

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1027
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v2

    .line 1031
    .local v2, "curveType":I
    const/4 v9, 0x3

    if-ne v2, v9, :cond_2

    .line 1032
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v9

    iput v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    .line 1033
    iget v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    invoke-static {v9}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1035
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    .line 1036
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported curveId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1035
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1039
    :cond_0
    iget v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    invoke-static {v9}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "curveOid":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1041
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    .line 1042
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown named curve: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1041
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1044
    :cond_1
    invoke-static {v1}, Lsun/security/ssl/JsseJce;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 1045
    .local v5, "parameters":Ljava/security/spec/ECParameterSpec;
    if-nez v5, :cond_3

    .line 1046
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    .line 1047
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported curve: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1046
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1050
    .end local v1    # "curveOid":Ljava/lang/String;
    .end local v5    # "parameters":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    .line 1051
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported ECCurveType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1050
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1053
    .restart local v1    # "curveOid":Ljava/lang/String;
    .restart local v5    # "parameters":Ljava/security/spec/ECParameterSpec;
    :cond_3
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v9

    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    .line 1055
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v10

    invoke-static {v9, v10}, Lsun/security/ssl/JsseJce;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 1056
    .local v6, "point":Ljava/security/spec/ECPoint;
    const-string/jumbo v9, "EC"

    invoke-static {v9}, Lsun/security/ssl/JsseJce;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 1058
    .local v3, "factory":Ljava/security/KeyFactory;
    new-instance v9, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v9, v6, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 1057
    invoke-virtual {v3, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    .line 1060
    if-nez p2, :cond_4

    .line 1062
    return-void

    .line 1066
    :cond_4
    move-object/from16 v0, p6

    iget v9, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v9, v10, :cond_5

    .line 1067
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v4

    .line 1068
    .local v4, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v8

    .line 1071
    .local v8, "signature":I
    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v9

    .line 1070
    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1075
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1074
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1076
    new-instance v9, Ljavax/net/ssl/SSLHandshakeException;

    .line 1077
    const-string/jumbo v10, "Unsupported SignatureAndHashAlgorithm in ServerKeyExchange message"

    .line 1076
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1083
    .end local v4    # "hash":I
    .end local v8    # "signature":I
    :cond_5
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v9

    iput-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    .line 1087
    move-object/from16 v0, p6

    iget v9, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v9, v10, :cond_6

    .line 1089
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v9

    .line 1088
    invoke-static {v9}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    .line 1093
    .local v7, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v7, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 1095
    move-object/from16 v0, p4

    invoke-direct {p0, v7, p3, v0}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->updateSignature(Ljava/security/Signature;[B[B)V

    .line 1097
    iget-object v9, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    invoke-virtual {v7, v9}, Ljava/security/Signature;->verify([B)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1098
    new-instance v9, Ljavax/net/ssl/SSLKeyException;

    .line 1099
    const-string/jumbo v10, "Invalid signature on ECDH server key exchange message"

    .line 1098
    invoke-direct {v9, v10}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1091
    .end local v7    # "sig":Ljava/security/Signature;
    :cond_6
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    .restart local v7    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 1022
    :cond_7
    return-void
.end method

.method private static getSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .param p0, "keyAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1112
    const-string/jumbo v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    const-string/jumbo v0, "SHA1withECDSA"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 1114
    :cond_0
    const-string/jumbo v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    invoke-static {}, Lsun/security/ssl/RSASignature;->getInstance()Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 1117
    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v1, "neither an RSA or a EC key"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSignature(Ljava/security/Signature;[B[B)V
    .locals 1
    .param p1, "sig"    # Ljava/security/Signature;
    .param p2, "clntNonce"    # [B
    .param p3, "svrNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 1124
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    .line 1126
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 1127
    iget v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 1128
    iget v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 1129
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    array-length v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update(B)V

    .line 1130
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 1122
    return-void
.end method


# virtual methods
.method getPublicKey()Ljava/security/interfaces/ECPublicKey;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method messageLength()I
    .locals 3

    .prologue
    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, "sigLen":I
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 1137
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    .line 1138
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    move-result v1

    add-int/2addr v0, v1

    .line 1142
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
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
    .line 1161
    const-string/jumbo v0, "*** ECDH ServerKeyExchange"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    if-nez v0, :cond_2

    .line 1165
    const-string/jumbo v0, "Anonymous"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1173
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Server key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1160
    :cond_1
    return-void

    .line 1167
    :cond_2
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Signature Algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1169
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 1146
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 1147
    iget v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->curveId:I

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 1148
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->pointBytes:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 1150
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    .line 1152
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 1153
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 1156
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->signatureBytes:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 1145
    :cond_1
    return-void
.end method
