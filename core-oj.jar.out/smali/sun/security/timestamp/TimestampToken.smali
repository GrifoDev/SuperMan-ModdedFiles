.class public Lsun/security/timestamp/TimestampToken;
.super Ljava/lang/Object;
.source "TimestampToken.java"


# instance fields
.field private genTime:Ljava/util/Date;

.field private hashAlgorithm:Lsun/security/x509/AlgorithmId;

.field private hashedMessage:[B

.field private nonce:Ljava/math/BigInteger;

.field private policy:Lsun/security/util/ObjectIdentifier;

.field private serialNumber:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No timestamp token info"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lsun/security/timestamp/TimestampToken;->parse([B)V

    return-void
.end method

.method private parse([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, p1}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Bad encoding for timestamp token info"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v3

    iput v3, p0, Lsun/security/timestamp/TimestampToken;->version:I

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->policy:Lsun/security/util/ObjectIdentifier;

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    :cond_1
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    :cond_2
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .locals 1

    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getHashedMessage()[B
    .locals 1

    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method
