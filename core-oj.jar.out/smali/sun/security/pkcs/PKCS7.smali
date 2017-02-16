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
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 68
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 69
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 70
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 71
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 72
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 87
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 89
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 91
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 68
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 69
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 102
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 101
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 68
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 69
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 70
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 71
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 72
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 114
    :try_start_0
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 115
    .local v0, "derin":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 116
    .end local v0    # "derin":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 118
    const-string/jumbo v3, "Unable to parse the encoded bytes"

    .line 117
    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    throw v2
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V
    .locals 1
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "crls"    # [Ljava/security/cert/X509CRL;
    .param p5, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 68
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 69
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 192
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 193
    iput-object p1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 194
    iput-object p2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 195
    iput-object p3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 196
    iput-object p4, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 197
    iput-object p5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 190
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .locals 6
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .prologue
    .line 204
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V

    .line 203
    return-void
.end method

.method private parse(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 133
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    .line 138
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    .line 139
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    .line 141
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 142
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    throw v2
.end method

.method private parse(Lsun/security/util/DerInputStream;Z)V
    .locals 4
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v1, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 161
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iget-object v1, v1, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 162
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    move-result-object v0

    .line 164
    .local v0, "content":Lsun/security/util/DerValue;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    .line 158
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    goto :goto_0

    .line 172
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

    .line 173
    const-string/jumbo v3, " not supported."

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .locals 14
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 209
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v5, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 210
    .local v5, "dis":Lsun/security/util/DerInputStream;
    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v4

    .line 211
    .local v4, "contents":[Lsun/security/util/DerValue;
    array-length v10, v4

    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    iput-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string/jumbo v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 220
    .end local v3    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, v4

    if-ge v6, v10, :cond_3

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v8

    .line 224
    .local v8, "original":[B
    if-nez v3, :cond_1

    .line 225
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/x509/X509CertImpl;

    aget-object v12, v4, v6

    invoke-direct {v11, v12, v8}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v11, v10, v6
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :goto_2
    if-eqz v13, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 220
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 227
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 229
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 228
    invoke-direct {v12, v10, v8}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v12, v11, v6

    .line 231
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    const/4 v0, 0x0

    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 238
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "original":[B
    :catch_0
    move-exception v7

    .line 239
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 240
    .local v9, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v7}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v10

    .line 243
    :goto_4
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 242
    :cond_2
    throw v10

    .line 234
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v2

    .line 235
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :goto_5
    :try_start_5
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v9    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v2}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 237
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_3
    return-void

    .line 242
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "original":[B
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 234
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 238
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "ioe":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 216
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "i":I
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "original":[B
    .restart local v3    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_4
    move-exception v2

    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private parseOldSignedData(Lsun/security/util/DerValue;)V
    .locals 22
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    .line 386
    .local v9, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 389
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v8

    .line 390
    .local v8, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v14, v8

    .line 392
    .local v14, "len":I
    new-array v0, v14, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 394
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 395
    :try_start_0
    aget-object v15, v8, v11

    .line 396
    .local v15, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    invoke-static {v15}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v20

    aput-object v20, v19, v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 398
    .end local v15    # "oid":Lsun/security/util/DerValue;
    :catch_0
    move-exception v10

    .line 399
    .local v10, "e":Ljava/io/IOException;
    new-instance v19, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v20, "Error parsing digest AlgorithmId IDs"

    invoke-direct/range {v19 .. v20}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 403
    .end local v10    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v19, Lsun/security/pkcs/ContentInfo;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 406
    const/4 v7, 0x0

    .line 408
    .local v7, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string/jumbo v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 412
    .end local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_1
    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 413
    .local v6, "certVals":[Lsun/security/util/DerValue;
    array-length v14, v6

    .line 414
    new-array v0, v14, [Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 416
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_4

    .line 417
    const/4 v3, 0x0

    .line 419
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    aget-object v19, v6, v11

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v16

    .line 420
    .local v16, "original":[B
    if-nez v7, :cond_2

    .line 421
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

    .line 439
    :goto_3
    const/16 v19, 0x0

    if-eqz v19, :cond_1

    .line 440
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 416
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 423
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    new-instance v21, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 425
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    .line 424
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v21, v20, v11

    .line 427
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    const/4 v3, 0x0

    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 434
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v16    # "original":[B
    :catch_1
    move-exception v13

    .line 435
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 436
    .local v17, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 437
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v19

    .line 439
    :goto_5
    if-eqz v3, :cond_3

    .line 440
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 438
    :cond_3
    throw v19

    .line 430
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v5

    .line 431
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "ce":Ljava/security/cert/CertificateException;
    :goto_6
    :try_start_6
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v17    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 433
    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 445
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 448
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v18

    .line 449
    .local v18, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v18

    array-length v14, v0

    .line 450
    new-array v0, v14, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 451
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v14, :cond_5

    .line 452
    aget-object v19, v18, v11

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v12

    .line 453
    .local v12, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/pkcs/SignerInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    aput-object v20, v19, v11

    .line 451
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 381
    .end local v12    # "in":Lsun/security/util/DerInputStream;
    :cond_5
    return-void

    .line 438
    .end local v18    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v16    # "original":[B
    :catchall_1
    move-exception v19

    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 430
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 434
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v13

    .restart local v13    # "ioe":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 409
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v16    # "original":[B
    .restart local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_5
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_1
.end method

.method private parseSignedData(Lsun/security/util/DerValue;)V
    .locals 27
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v11

    .line 255
    .local v11, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 258
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v10

    .line 259
    .local v10, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v0, v10

    move/from16 v18, v0

    .line 260
    .local v18, "len":I
    move/from16 v0, v18

    new-array v0, v0, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 262
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    .line 263
    :try_start_0
    aget-object v19, v10, v15

    .line 264
    .local v19, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v24, v0

    invoke-static/range {v19 .. v19}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v25

    aput-object v25, v24, v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 267
    .end local v19    # "oid":Lsun/security/util/DerValue;
    :catch_0
    move-exception v12

    .line 269
    .local v12, "e":Ljava/io/IOException;
    new-instance v21, Lsun/security/pkcs/ParsingException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error parsing digest AlgorithmId IDs: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 270
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    .line 269
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 271
    .local v21, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 272
    throw v21

    .line 275
    .end local v12    # "e":Ljava/io/IOException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_0
    new-instance v24, Lsun/security/pkcs/ContentInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 277
    const/4 v7, 0x0

    .line 279
    .local v7, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string/jumbo v24, "X.509"

    invoke-static/range {v24 .. v24}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v7

    .line 288
    .end local v7    # "certfac":Ljava/security/cert/CertificateFactory;
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

    .line 289
    const/16 v24, 0x2

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 291
    .local v6, "certVals":[Lsun/security/util/DerValue;
    array-length v0, v6

    move/from16 v18, v0

    .line 292
    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 293
    const/4 v8, 0x0

    .line 295
    .local v8, "count":I
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    .line 296
    const/4 v3, 0x0

    .line 298
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    aget-object v24, v6, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getTag()B

    move-result v23

    .line 301
    .local v23, "tag":B
    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 302
    aget-object v24, v6, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v20

    .line 303
    .local v20, "original":[B
    if-nez v7, :cond_3

    .line 304
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

    .line 313
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 324
    .end local v20    # "original":[B
    :cond_1
    const/16 v24, 0x0

    if-eqz v24, :cond_2

    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 295
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 306
    .restart local v20    # "original":[B
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v25, v0

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v26, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 308
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;

    .line 307
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v26, v25, v8

    .line 310
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 311
    const/4 v3, 0x0

    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 319
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v20    # "original":[B
    .end local v23    # "tag":B
    :catch_1
    move-exception v17

    .line 320
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v17, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 322
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    .end local v17    # "ioe":Ljava/io/IOException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v24

    .line 324
    :goto_5
    if-eqz v3, :cond_4

    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 323
    :cond_4
    throw v24

    .line 315
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v5

    .line 316
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "ce":Ljava/security/cert/CertificateException;
    :goto_6
    :try_start_6
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 318
    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 328
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_5
    move/from16 v0, v18

    if-eq v8, v0, :cond_6

    .line 329
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

    .line 334
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v8    # "count":I
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

    .line 335
    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v9

    .line 337
    .local v9, "crlVals":[Lsun/security/util/DerValue;
    array-length v0, v9

    move/from16 v18, v0

    .line 338
    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509CRL;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 340
    const/4 v15, 0x0

    :goto_7
    move/from16 v0, v18

    if-ge v15, v0, :cond_a

    .line 341
    const/4 v3, 0x0

    .line 343
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    if-nez v7, :cond_8

    .line 344
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

    .line 358
    :goto_8
    const/16 v24, 0x0

    if-eqz v24, :cond_7

    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 340
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 346
    :cond_8
    :try_start_8
    aget-object v24, v9, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v14

    .line 347
    .local v14, "encoded":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/security/cert/CRLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 348
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v25, v0

    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509CRL;

    aput-object v24, v25, v15

    .line 349
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/security/cert/CRLException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 350
    const/4 v3, 0x0

    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 352
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "encoded":[B
    :catch_3
    move-exception v13

    .line 354
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "e":Ljava/security/cert/CRLException;
    :goto_9
    :try_start_a
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 356
    throw v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 357
    .end local v13    # "e":Ljava/security/cert/CRLException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_1
    move-exception v24

    .line 358
    :goto_a
    if-eqz v3, :cond_9

    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 357
    :cond_9
    throw v24

    .line 365
    .end local v9    # "crlVals":[Lsun/security/util/DerValue;
    :cond_a
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v22

    .line 367
    .local v22, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 368
    move/from16 v0, v18

    new-array v0, v0, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 370
    const/4 v15, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    .line 371
    aget-object v24, v22, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v16

    .line 372
    .local v16, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/pkcs/SignerInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v25, v24, v15

    .line 370
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 250
    .end local v16    # "in":Lsun/security/util/DerInputStream;
    :cond_b
    return-void

    .line 357
    .end local v22    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v14    # "encoded":[B
    :catchall_2
    move-exception v24

    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .line 352
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v13

    .restart local v13    # "e":Ljava/security/cert/CRLException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 323
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v9    # "crlVals":[Lsun/security/util/DerValue;
    .end local v13    # "e":Ljava/security/cert/CRLException;
    .end local v14    # "encoded":[B
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "certVals":[Lsun/security/util/DerValue;
    .restart local v8    # "count":I
    .restart local v20    # "original":[B
    .restart local v23    # "tag":B
    :catchall_3
    move-exception v24

    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_5

    .line 315
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_6

    .line 319
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v17

    .restart local v17    # "ioe":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .line 280
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v8    # "count":I
    .end local v17    # "ioe":Ljava/io/IOException;
    .end local v20    # "original":[B
    .end local v23    # "tag":B
    .restart local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_7
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_1
.end method

.method private populateCertIssuerNames()V
    .locals 7

    .prologue
    .line 708
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_0

    .line 709
    return-void

    .line 711
    :cond_0
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    new-array v6, v6, [Ljava/security/Principal;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    .line 712
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 713
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v1, v6, v4

    .line 714
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 715
    .local v2, "certIssuerName":Ljava/security/Principal;
    instance-of v6, v2, Lsun/security/x509/X500Name;

    if-nez v6, :cond_1

    .line 722
    :try_start_0
    new-instance v5, Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    .line 724
    .local v5, "tbsCert":Lsun/security/x509/X509CertInfo;
    const-string/jumbo v6, "issuer.dname"

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 723
    move-object v0, v6

    check-cast v0, Ljava/security/Principal;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v5    # "tbsCert":Lsun/security/x509/X509CertInfo;
    :cond_1
    :goto_1
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v2, v6, v4

    .line 712
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 707
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certIssuerName":Ljava/security/Principal;
    :cond_2
    return-void

    .line 726
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "certIssuerName":Ljava/security/Principal;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public encodeSignedData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 465
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    .line 466
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 463
    return-void
.end method

.method public encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .locals 16
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    new-instance v10, Lsun/security/util/DerOutputStream;

    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 481
    .local v10, "signedData":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/16 v13, 0x31

    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v12, v10}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-eqz v12, :cond_2

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    new-array v9, v12, [Lsun/security/x509/X509CertImpl;

    .line 493
    .local v9, "implCerts":[Lsun/security/x509/X509CertImpl;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-ge v6, v12, :cond_1

    .line 494
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v12, v12, v6

    instance-of v12, v12, Lsun/security/x509/X509CertImpl;

    if-eqz v12, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v12, v12, v6

    check-cast v12, Lsun/security/x509/X509CertImpl;

    aput-object v12, v9, v6

    .line 493
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 498
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 499
    .local v5, "encoded":[B
    new-instance v12, Lsun/security/x509/X509CertImpl;

    invoke-direct {v12, v5}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v12, v9, v6
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 500
    .end local v5    # "encoded":[B
    :catch_0
    move-exception v3

    .line 501
    .local v3, "ce":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 502
    .local v7, "ie":Ljava/io/IOException;
    invoke-virtual {v7, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 503
    throw v7

    .line 510
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .end local v7    # "ie":Ljava/io/IOException;
    :cond_1
    const/16 v12, -0x60

    invoke-virtual {v10, v12, v9}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 514
    .end local v6    # "i":I
    .end local v9    # "implCerts":[Lsun/security/x509/X509CertImpl;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v12, v12

    if-eqz v12, :cond_5

    .line 516
    new-instance v8, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v12, v12

    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 517
    .local v8, "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_2
    if-ge v12, v14, :cond_4

    aget-object v4, v13, v12

    .line 518
    .local v4, "crl":Ljava/security/cert/X509CRL;
    instance-of v15, v4, Lsun/security/x509/X509CRLImpl;

    if-eqz v15, :cond_3

    .line 519
    check-cast v4, Lsun/security/x509/X509CRLImpl;

    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 522
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v5

    .line 523
    .restart local v5    # "encoded":[B
    new-instance v15, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v15, v5}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 524
    .end local v5    # "encoded":[B
    :catch_1
    move-exception v2

    .line 525
    .local v2, "ce":Ljava/security/cert/CRLException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v7    # "ie":Ljava/io/IOException;
    invoke-virtual {v7, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 527
    throw v7

    .line 535
    .end local v2    # "ce":Ljava/security/cert/CRLException;
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v7    # "ie":Ljava/io/IOException;
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Lsun/security/x509/X509CRLImpl;

    invoke-interface {v8, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lsun/security/util/DerEncoder;

    .line 534
    const/16 v13, -0x5f

    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 539
    .end local v8    # "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/16 v13, 0x31

    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 542
    new-instance v11, Lsun/security/util/DerValue;

    .line 543
    invoke-virtual {v10}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v12

    .line 542
    const/16 v13, 0x30

    invoke-direct {v11, v13, v12}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 546
    .local v11, "signedDataSeq":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/pkcs/ContentInfo;

    sget-object v12, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, v12, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    .line 550
    .local v1, "block":Lsun/security/pkcs/ContentInfo;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 476
    return-void
.end method

.method public getCRLs()[Ljava/security/cert/X509CRL;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509CRL;

    return-object v0

    .line 666
    :cond_0
    return-object v1
.end method

.method public getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuerName"    # Lsun/security/x509/X500Name;

    .prologue
    const/4 v4, 0x0

    .line 687
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2

    .line 688
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v3, :cond_0

    .line 689
    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    .line 690
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 691
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v0, v3, v1

    .line 692
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 693
    .local v2, "thisSerial":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 693
    if-eqz v3, :cond_1

    .line 696
    return-object v0

    .line 690
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "i":I
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_2
    return-object v4
.end method

.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 654
    :cond_0
    return-object v1
.end method

.method public getContentInfo()Lsun/security/pkcs/ContentInfo;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isOldStyle()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 739
    const-string/jumbo v1, ""

    .line 741
    .local v1, "out":Ljava/lang/String;
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

    .line 742
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    .line 743
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

    .line 744
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    if-eqz v2, :cond_1

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 747
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

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: certificates: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 752
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

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 754
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v2, :cond_3

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: crls: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 757
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

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 759
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    if-eqz v2, :cond_4

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: signer infos: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 762
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

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 764
    .end local v0    # "i":I
    :cond_4
    return-object v1
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "dataInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 564
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

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify([B)[Lsun/security/pkcs/SignerInfo;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 592
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 593
    .local v1, "intResult":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/pkcs/SignerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 595
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 596
    .local v3, "signerInfo":Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_0

    .line 597
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    .end local v3    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v2, v4, [Lsun/security/pkcs/SignerInfo;

    .line 603
    .local v2, "result":[Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 604
    return-object v2

    .line 606
    .end local v2    # "result":[Lsun/security/pkcs/SignerInfo;
    :cond_2
    return-object v5
.end method
