.class public final Lsun/security/ec/ECParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "ECParameters.java"


# instance fields
.field private paramSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method

.method public static decodeParameters([B)Ljava/security/spec/ECParameterSpec;
    .locals 6
    .param p0, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p0}, Lsun/security/util/DerValue;-><init>([B)V

    .line 193
    .local v0, "encodedParams":Lsun/security/util/DerValue;
    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 194
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 195
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-static {v1}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Lsun/security/util/ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 196
    .local v2, "spec":Ljava/security/spec/ECParameterSpec;
    if-nez v2, :cond_0

    .line 197
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown named curve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_0
    return-object v2

    .line 202
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Only named ECParameters supported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    array-length v3, p0

    if-eqz v3, :cond_0

    aget-byte v3, p0, v5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 88
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Only uncompressed point format supported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    shr-int/lit8 v0, v3, 0x3

    .line 91
    .local v0, "n":I
    array-length v3, p0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_2

    .line 92
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Point does not match field size"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_2
    new-array v1, v0, [B

    .line 95
    .local v1, "xb":[B
    new-array v2, v0, [B

    .line 96
    .local v2, "yb":[B
    invoke-static {p0, v6, v1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 97
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 98
    new-instance v3, Ljava/security/spec/ECPoint;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method

.method public static encodeParameters(Ljava/security/spec/ECParameterSpec;)[B
    .locals 4
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 183
    invoke-static {p0}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    move-result-object v0

    .line 184
    .local v0, "curve":Lsun/security/ec/NamedCurve;
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a known named curve: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    invoke-virtual {v0}, Lsun/security/ec/NamedCurve;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 7
    .param p0, "point"    # Ljava/security/spec/ECPoint;
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;

    .prologue
    const/4 v6, 0x0

    .line 104
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v1, v4, 0x3

    .line 105
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object v2

    .line 106
    .local v2, "xb":[B
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object v3

    .line 107
    .local v3, "yb":[B
    array-length v4, v2

    if-gt v4, v1, :cond_0

    array-length v4, v3

    if-le v4, v1, :cond_1

    .line 108
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    .line 109
    const-string/jumbo v5, "Point coordinates do not match field size"

    .line 108
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_1
    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 112
    .local v0, "b":[B
    const/4 v4, 0x4

    aput-byte v4, v0, v6

    .line 113
    array-length v4, v2

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 114
    array-length v4, v0

    array-length v5, v3

    sub-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 115
    return-object v0
.end method

.method static getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;
    .locals 4
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    const-string/jumbo v2, "EC"

    sget-object v3, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    .line 279
    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 281
    .local v1, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v1, p0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-object v1

    .line 283
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "EC parameters error"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-static {p0}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    move-result-object v0

    .line 178
    .local v0, "curve":Lsun/security/ec/NamedCurve;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lsun/security/ec/NamedCurve;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;
    .locals 6
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    const/4 v5, 0x0

    .line 137
    instance-of v3, p0, Lsun/security/ec/NamedCurve;

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 138
    :cond_0
    check-cast p0, Lsun/security/ec/NamedCurve;

    .end local p0    # "params":Ljava/security/spec/ECParameterSpec;
    return-object p0

    .line 148
    .restart local p0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 149
    .local v0, "fieldSize":I
    invoke-static {}, Lsun/security/ec/NamedCurve;->knownECParameterSpecs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "namedCurve$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    .line 153
    .local v1, "namedCurve":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 156
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 169
    check-cast v1, Lsun/security/ec/NamedCurve;

    .end local v1    # "namedCurve":Ljava/security/spec/ECParameterSpec;
    return-object v1

    .line 172
    :cond_3
    return-object v5
.end method

.method static trimZeroes([B)[B
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    if-nez v0, :cond_1

    .line 126
    return-object p0

    .line 128
    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v1, v2, [B

    .line 129
    .local v1, "t":[B
    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    return-object v1
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lsun/security/ec/ECParameters;->encodeParameters(Ljava/security/spec/ECParameterSpec;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encodingMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lsun/security/ec/ECParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "spec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0

    .line 330
    :cond_0
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    iget-object v1, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v1}, Lsun/security/ec/ECParameters;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 333
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    .line 334
    const-string/jumbo v1, "Only ECParameterSpec and ECGenParameterSpec supported"

    .line 333
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 296
    instance-of v2, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 297
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    invoke-static {v2}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    .line 298
    iget-object v2, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_2

    .line 299
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not a supported named curve: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v2, :cond_3

    .line 303
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 305
    .local v1, "spec":Ljava/security/spec/ECParameterSpec;
    if-nez v1, :cond_1

    .line 306
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown curve: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_1
    iput-object v1, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    .line 295
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_2
    return-void

    .line 309
    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    if-nez p1, :cond_4

    .line 310
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    .line 311
    const-string/jumbo v3, "paramSpec must not be null"

    .line 310
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_4
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    .line 314
    const-string/jumbo v3, "Only ECParameterSpec and ECGenParameterSpec supported"

    .line 313
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {p1}, Lsun/security/ec/ECParameters;->decodeParameters([B)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    .line 318
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .param p1, "params"    # [B
    .param p2, "decodingMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lsun/security/ec/ECParameters;->engineInit([B)V

    .line 322
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
