.class public final Lsun/security/ec/ECPublicKeyImpl;
.super Lsun/security/x509/X509Key;
.source "ECPublicKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# static fields
.field private static final serialVersionUID:J = -0x222ae9db79b5c3d1L


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .locals 3
    .param p1, "w"    # Ljava/security/spec/ECPoint;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lsun/security/x509/X509Key;-><init>()V

    .line 56
    iput-object p1, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    .line 57
    iput-object p2, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    .line 59
    new-instance v0, Lsun/security/x509/AlgorithmId;

    .line 60
    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {p2}, Lsun/security/ec/ECParameters;->getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 59
    invoke-direct {v0, v1, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    iput-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 61
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p1, v0}, Lsun/security/ec/ECParameters;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lsun/security/x509/X509Key;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Key;->decode([B)V

    .line 67
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "EC"

    return-object v0
.end method

.method public getEncodedPublicValue()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method protected parseKeyBits()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 98
    .local v0, "algParams":Ljava/security/AlgorithmParameters;
    const-class v3, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/ECParameterSpec;

    iput-object v3, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    .line 99
    iget-object v3, p0, Lsun/security/x509/X509Key;->key:[B

    iget-object v4, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-static {v3, v4}, Lsun/security/ec/ECParameters;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 102
    .end local v0    # "algParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Invalid EC key"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 100
    .end local v2    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Invalid EC key"

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sun EC public key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string/jumbo v1, " bits\n  public x coord: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "\n  public y coord: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "\n  parameters: "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    .line 117
    invoke-virtual {p0}, Lsun/security/ec/ECPublicKeyImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncoded()[B

    move-result-object v4

    .line 116
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method
