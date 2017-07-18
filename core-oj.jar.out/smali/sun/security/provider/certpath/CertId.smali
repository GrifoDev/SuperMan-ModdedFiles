.class public Lsun/security/provider/certpath/CertId;
.super Ljava/lang/Object;
.source "CertId.java"


# static fields
.field private static final SHA1_ALGID:Lsun/security/x509/AlgorithmId;

.field private static final debug:Z


# instance fields
.field private final certSerialNumber:Lsun/security/x509/SerialNumber;

.field private final hashAlgId:Lsun/security/x509/AlgorithmId;

.field private final issuerKeyHash:[B

.field private final issuerNameHash:[B

.field private myhash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsun/security/x509/AlgorithmId;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    sput-object v0, Lsun/security/provider/certpath/CertId;->SHA1_ALGID:Lsun/security/x509/AlgorithmId;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, -0x1

    iput v6, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sget-object v6, Lsun/security/provider/certpath/CertId;->SHA1_ALGID:Lsun/security/x509/AlgorithmId;

    iput-object v6, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, v3}, Lsun/security/util/DerValue;-><init>([B)V

    const/4 v6, 0x2

    new-array v4, v6, [Lsun/security/util/DerValue;

    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    aput-object v6, v4, v8

    aget-object v6, v4, v8

    invoke-virtual {v6}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    iput-object p3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    return-void

    :catch_0
    move-exception v2

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "Unable to create CertId"

    invoke-direct {v6, v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lsun/security/provider/certpath/CertId;

    if-eqz v1, :cond_1

    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getIssuerNameHash()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getIssuerKeyHash()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_1
    return v3

    :cond_2
    return v3
.end method

.method public getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    return-object v0
.end method

.method public getIssuerNameHash()[B
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->hashCode()I

    move-result v1

    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v2}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    :cond_2
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CertId \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "issuerNameHash \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-virtual {v0, v2}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nissuerKeyHash: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    invoke-virtual {v0, v2}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v3}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
