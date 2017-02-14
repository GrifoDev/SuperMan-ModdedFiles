.class public final Lsun/security/ec/ECParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "ECParameters.java"


# instance fields
.field private paramSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method

.method public static decodeParameters([B)Ljava/security/spec/ECParameterSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p0}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Lsun/security/util/ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    if-nez v2, :cond_0

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

    :cond_0
    return-object v2

    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Only named ECParameters supported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v3, p0

    if-eqz v3, :cond_0

    aget-byte v3, p0, v5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Only uncompressed point format supported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    shr-int/lit8 v0, v3, 0x3

    array-length v3, p0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Point does not match field size"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-array v1, v0, [B

    new-array v2, v0, [B

    invoke-static {p0, v6, v1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

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

    invoke-static {p0}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    move-result-object v0

    if-nez v0, :cond_0

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

    :cond_0
    invoke-virtual {v0}, Lsun/security/ec/NamedCurve;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v1, v4, 0x3

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object v3

    array-length v4, v2

    if-gt v4, v1, :cond_0

    array-length v4, v3

    if-le v4, v1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Point coordinates do not match field size"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v6

    array-length v4, v2

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, v0

    array-length v5, v3

    sub-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method static getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "EC"

    sget-object v3, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "EC parameters error"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    move-result-object v0

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

    const/4 v5, 0x0

    instance-of v3, p0, Lsun/security/ec/NamedCurve;

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    :cond_0
    check-cast p0, Lsun/security/ec/NamedCurve;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    invoke-static {}, Lsun/security/ec/NamedCurve;->knownECParameterSpecs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    if-ne v3, v4, :cond_2

    check-cast v1, Lsun/security/ec/NamedCurve;

    return-object v1

    :cond_3
    return-object v5
.end method

.method static trimZeroes([B)[B
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-object p0

    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v1, v2, [B

    array-length v2, v1

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

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

    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lsun/security/ec/ECParameters;->encodeParameters(Ljava/security/spec/ECParameterSpec;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0

    :cond_0
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    iget-object v1, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v1}, Lsun/security/ec/ECParameters;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "Only ECParameterSpec and ECGenParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v2, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/security/spec/ECParameterSpec;

    invoke-static {v2}, Lsun/security/ec/ECParameters;->getNamedCurve(Ljava/security/spec/ECParameterSpec;)Lsun/security/ec/NamedCurve;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    iget-object v2, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not a supported named curve: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    if-nez v1, :cond_1

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

    :cond_1
    iput-object v1, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_4

    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v3, "paramSpec must not be null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v3, "Only ECParameterSpec and ECGenParameterSpec supported"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lsun/security/ec/ECParameters;->decodeParameters([B)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/ec/ECParameters;->engineInit([B)V

    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ec/ECParameters;->paramSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
