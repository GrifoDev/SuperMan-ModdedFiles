.class public Lsun/security/pkcs/PKCS7;
.super Ljava/lang/Object;
.source "PKCS7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;,
        Lsun/security/pkcs/PKCS7$WrappedX509Certificate;
    }
.end annotation


# instance fields
.field private certIssuerNames:[Ljava/security/Principal;

.field private certificates:[Ljava/security/cert/X509Certificate;

.field private contentInfo:Lsun/security/pkcs/ContentInfo;

.field private contentType:Lsun/security/util/ObjectIdentifier;

.field private crls:[Ljava/security/cert/X509CRL;

.field private digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

.field private oldStyle:Z

.field private signerInfos:[Lsun/security/pkcs/SignerInfo;

.field private version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    :try_start_0
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v3, "Unable to parse the encoded bytes"

    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    iput-object p1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    iput-object p2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iput-object p3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    iput-object p5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-void
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V

    return-void
.end method

.method private parse(Lsun/security/util/DerInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->addSuppressed(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private parse(Lsun/security/util/DerInputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v1, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iget-object v1, v1, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    move-result-object v0

    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lsun/security/pkcs/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x0

    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v5, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v4

    array-length v10, v4

    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    iput-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    :goto_0
    const/4 v6, 0x0

    :goto_1
    array-length v10, v4

    if-ge v6, v10, :cond_3

    const/4 v0, 0x0

    :try_start_1
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v8

    if-nez v3, :cond_1

    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/x509/X509CertImpl;

    aget-object v12, v4, v6

    invoke-direct {v11, v12, v8}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v11, v10, v6
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v13, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-direct {v12, v10, v8}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v12, v11, v6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    :goto_3
    :try_start_4
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_2
    throw v10

    :catch_1
    move-exception v2

    :goto_5
    :try_start_5
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    return-void

    :catchall_1
    move-exception v10

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v0, v1

    goto :goto_5

    :catch_3
    move-exception v7

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_0
.end method

.method private parseOldSignedData(Lsun/security/util/DerValue;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v8

    array-length v14, v8

    new-array v0, v14, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_0

    :try_start_0
    aget-object v15, v8, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    invoke-static {v15}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v20

    aput-object v20, v19, v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    new-instance v19, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v20, "Error parsing digest AlgorithmId IDs"

    invoke-direct/range {v19 .. v20}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_0
    new-instance v19, Lsun/security/pkcs/ContentInfo;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    :goto_1
    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v6

    array-length v14, v6

    new-array v0, v14, [Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_4

    const/4 v3, 0x0

    :try_start_2
    aget-object v19, v6, v11

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v16

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/x509/X509CertImpl;

    aget-object v21, v6, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v20, v19, v11
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/16 v19, 0x0

    if-eqz v19, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    new-instance v21, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v21, v20, v11

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v3, 0x0

    goto :goto_3

    :catch_1
    move-exception v13

    :goto_4
    :try_start_5
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v19

    :goto_5
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_3
    throw v19

    :catch_2
    move-exception v5

    :goto_6
    :try_start_6
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v14, v0

    new-array v0, v14, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v14, :cond_5

    aget-object v19, v18, v11

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/pkcs/SignerInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    aput-object v20, v19, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    return-void

    :catchall_1
    move-exception v19

    move-object v3, v4

    goto :goto_5

    :catch_3
    move-exception v5

    move-object v3, v4

    goto :goto_6

    :catch_4
    move-exception v13

    move-object v3, v4

    goto :goto_4

    :catch_5
    move-exception v5

    goto/16 :goto_1
.end method

.method private parseSignedData(Lsun/security/util/DerValue;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v10

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    :try_start_0
    aget-object v19, v10, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v24, v0

    invoke-static/range {v19 .. v19}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v25

    aput-object v25, v24, v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    new-instance v21, Lsun/security/pkcs/ParsingException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error parsing digest AlgorithmId IDs: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v21

    :cond_0
    new-instance v24, Lsun/security/pkcs/ContentInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v24, "X.509"

    invoke-static/range {v24 .. v24}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v7

    :goto_1
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, -0x60

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const/16 v24, 0x2

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v6

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    const/4 v3, 0x0

    :try_start_2
    aget-object v24, v6, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getTag()B

    move-result v23

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    aget-object v24, v6, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v20

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/x509/X509CertImpl;

    aget-object v26, v6, v15

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v25, v24, v8
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    add-int/lit8 v8, v8, 0x1

    :cond_1
    const/16 v24, 0x0

    if-eqz v24, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v25, v0

    new-instance v26, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v26, v25, v8

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v3, 0x0

    goto :goto_3

    :catch_1
    move-exception v17

    :goto_4
    :try_start_5
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v24

    :goto_5
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_4
    throw v24

    :catch_2
    move-exception v5

    :goto_6
    :try_start_6
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    move/from16 v0, v18

    if-eq v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    :cond_6
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, -0x5f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v9

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509CRL;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    const/4 v15, 0x0

    :goto_7
    move/from16 v0, v18

    if-ge v15, v0, :cond_a

    const/4 v3, 0x0

    if-nez v7, :cond_8

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/x509/X509CRLImpl;

    aget-object v26, v9, v15

    invoke-direct/range {v25 .. v26}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v25, v24, v15
    :try_end_7
    .catch Ljava/security/cert/CRLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    const/16 v24, 0x0

    if-eqz v24, :cond_7

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_8
    :try_start_8
    aget-object v24, v9, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v14

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/security/cert/CRLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v25, v0

    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509CRL;

    aput-object v24, v25, v15

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/security/cert/CRLException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v3, 0x0

    goto :goto_8

    :catch_3
    move-exception v13

    :goto_9
    :try_start_a
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v24

    :goto_a
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_9
    throw v24

    :cond_a
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/4 v15, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    aget-object v24, v22, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/pkcs/SignerInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v25, v24, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_b
    return-void

    :catchall_2
    move-exception v24

    move-object v3, v4

    goto :goto_a

    :catch_4
    move-exception v13

    move-object v3, v4

    goto :goto_9

    :catchall_3
    move-exception v24

    move-object v3, v4

    goto/16 :goto_5

    :catch_5
    move-exception v5

    move-object v3, v4

    goto/16 :goto_6

    :catch_6
    move-exception v17

    move-object v3, v4

    goto/16 :goto_4

    :catch_7
    move-exception v5

    goto/16 :goto_1
.end method

.method private populateCertIssuerNames()V
    .locals 7

    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    new-array v6, v6, [Ljava/security/Principal;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    instance-of v6, v2, Lsun/security/x509/X500Name;

    if-nez v6, :cond_1

    :try_start_0
    new-instance v5, Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    const-string/jumbo v6, "issuer.dname"

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/security/Principal;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public encodeSignedData(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Lsun/security/util/DerOutputStream;

    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/16 v13, 0x31

    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v12, v10}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    new-array v9, v12, [Lsun/security/x509/X509CertImpl;

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-ge v6, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v12, v12, v6

    instance-of v12, v12, Lsun/security/x509/X509CertImpl;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v12, v12, v6

    check-cast v12, Lsun/security/x509/X509CertImpl;

    aput-object v12, v9, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    new-instance v12, Lsun/security/x509/X509CertImpl;

    invoke-direct {v12, v5}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v12, v9, v6
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v7

    :cond_1
    const/16 v12, -0x60

    invoke-virtual {v10, v12, v9}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v12, v12

    if-eqz v12, :cond_5

    new-instance v8, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v12, v12

    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_2
    if-ge v12, v14, :cond_4

    aget-object v4, v13, v12

    instance-of v15, v4, Lsun/security/x509/X509CRLImpl;

    if-eqz v15, :cond_3

    check-cast v4, Lsun/security/x509/X509CRLImpl;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v5

    new-instance v15, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v15, v5}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v7

    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Lsun/security/x509/X509CRLImpl;

    invoke-interface {v8, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lsun/security/util/DerEncoder;

    const/16 v13, -0x5f

    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/16 v13, 0x31

    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    new-instance v11, Lsun/security/util/DerValue;

    invoke-virtual {v10}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v12

    const/16 v13, 0x30

    invoke-direct {v11, v13, v12}, Lsun/security/util/DerValue;-><init>(B[B)V

    new-instance v1, Lsun/security/pkcs/ContentInfo;

    sget-object v12, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, v12, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public getCRLs()[Ljava/security/cert/X509CRL;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509CRL;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getContentInfo()Lsun/security/pkcs/ContentInfo;
    .locals 1

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .locals 1

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .locals 1

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isOldStyle()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: certificates: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: crls: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: signer infos: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify()[Lsun/security/pkcs/SignerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify([B)[Lsun/security/pkcs/SignerInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v2, v4, [Lsun/security/pkcs/SignerInfo;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v2

    :cond_2
    return-object v5
.end method
