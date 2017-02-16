.class public Lsun/security/pkcs/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# instance fields
.field authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field certificateSerialNumber:Ljava/math/BigInteger;

.field digestAlgorithmId:Lsun/security/x509/AlgorithmId;

.field digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

.field encryptedDigest:[B

.field issuerName:Lsun/security/x509/X500Name;

.field unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 8
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 118
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 119
    .local v0, "issuerAndSerialNumber":[Lsun/security/util/DerValue;
    aget-object v3, v0, v6

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 120
    .local v1, "issuerBytes":[B
    new-instance v3, Lsun/security/x509/X500Name;

    new-instance v4, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v4, v5, v1}, Lsun/security/util/DerValue;-><init>(B[B)V

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 122
    aget-object v3, v0, v7

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 125
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 127
    .local v2, "tmp":Lsun/security/util/DerValue;
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 130
    if-eqz p2, :cond_2

    .line 133
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 146
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 149
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 152
    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 167
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    new-instance v3, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v4, "extra data at the end"

    invoke-direct {v3, v4}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, -0x60

    if-ne v3, v4, :cond_0

    .line 138
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v3, p1}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, -0x5f

    if-ne v3, v4, :cond_1

    .line 162
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v3, p1, v7}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 161
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    goto :goto_1

    .line 112
    :cond_4
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/PKCS9Attributes;Lsun/security/x509/AlgorithmId;[BLsun/security/pkcs/PKCS9Attributes;)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "authenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;
    .param p5, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 83
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 84
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 85
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 86
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 87
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 88
    iput-object p6, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 89
    iput-object p7, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 81
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/x509/AlgorithmId;[B)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p5, "encryptedDigest"    # [B

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 68
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 69
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 70
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 72
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 66
    return-void
.end method

.method private static convertToStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "internalName"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, "SHA-1"

    return-object v0

    .line 283
    :cond_0
    const-string/jumbo v0, "SHA224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string/jumbo v0, "SHA-224"

    return-object v0

    .line 285
    :cond_1
    const-string/jumbo v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-string/jumbo v0, "SHA-256"

    return-object v0

    .line 287
    :cond_2
    const-string/jumbo v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    const-string/jumbo v0, "SHA-384"

    return-object v0

    .line 289
    :cond_3
    const-string/jumbo v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    const-string/jumbo v0, "SHA-512"

    return-object v0

    .line 292
    :cond_4
    return-object p0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    .line 187
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 188
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 189
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 190
    .local v0, "issuerAndSerialNumber":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v3, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 191
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 192
    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 194
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 197
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x60

    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 200
    :cond_0
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 202
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 205
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x5f

    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 208
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 209
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 211
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 186
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SignerInfo;->derEncode(Ljava/io/OutputStream;)V

    .line 172
    return-void
.end method

.method public getAuthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 232
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v8, v9}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 233
    .local v7, "userCert":Ljava/security/cert/X509Certificate;
    if-nez v7, :cond_0

    .line 234
    return-object v10

    .line 236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 240
    .local v4, "pkcsCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 241
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 240
    if-eqz v8, :cond_2

    .line 242
    :cond_1
    return-object v0

    .line 245
    :cond_2
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 246
    .local v2, "issuer":Ljava/security/Principal;
    const/4 v5, 0x0

    .line 248
    .local v5, "start":I
    :cond_3
    const/4 v3, 0x0

    .line 249
    .local v3, "match":Z
    move v1, v5

    .line 250
    .local v1, "i":I
    :goto_0
    array-length v8, v4

    if-ge v1, v8, :cond_4

    .line 251
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 253
    aget-object v8, v4, v1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    .line 257
    aget-object v9, v4, v1

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    .line 256
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 258
    array-length v5, v4

    .line 266
    :goto_1
    const/4 v3, 0x1

    .line 272
    :cond_4
    if-nez v3, :cond_3

    .line 276
    return-object v0

    .line 260
    :cond_5
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 261
    aget-object v6, v4, v5

    .line 262
    .local v6, "tmpCert":Ljava/security/cert/X509Certificate;
    aget-object v8, v4, v1

    aput-object v8, v4, v5

    .line 263
    aput-object v6, v4, v1

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 269
    .end local v6    # "tmpCert":Ljava/security/cert/X509Certificate;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncryptedDigest()[B
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method public getIssuerName()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 490
    .local v0, "hexDump":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v1, ""

    .line 492
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Signer Info for (issuer): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tcertificateSerialNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    const-string/jumbo v3, "\n"

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdigestAlgorithmId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_0

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tauthenticatedAttributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 499
    const-string/jumbo v3, "\n"

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdigestEncryptionAlgorithmId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 502
    const-string/jumbo v3, "\n"

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tencryptedDigest: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    const-string/jumbo v3, "\n"

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tunauthenticatedAttributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 508
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 508
    const-string/jumbo v3, "\n"

    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :cond_1
    return-object v1
.end method

.method verify(Lsun/security/pkcs/PKCS7;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .locals 30
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v7

    .line 315
    .local v7, "content":Lsun/security/pkcs/ContentInfo;
    if-nez p2, :cond_0

    .line 316
    new-instance v16, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v16, "inputStream":Ljava/io/InputStream;
    move-object/from16 p2, v16

    .line 319
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, "digestAlgname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 326
    move-object/from16 v9, p2

    .line 374
    .local v9, "dataSigned":Ljava/io/InputStream;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v14

    .line 378
    .local v14, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v14}, Lsun/security/x509/AlgorithmId;->getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 379
    .local v26, "tmp":Ljava/lang/String;
    if-eqz v26, :cond_1

    move-object/from16 v14, v26

    .line 380
    :cond_1
    invoke-static {v11, v14}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "algname":Ljava/lang/String;
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v25

    .line 384
    .local v25, "sig":Ljava/security/Signature;
    invoke-virtual/range {p0 .. p1}, Lsun/security/pkcs/SignerInfo;->getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 386
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_9

    .line 387
    const/16 v27, 0x0

    return-object v27

    .line 331
    .end local v3    # "algname":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "dataSigned":Ljava/io/InputStream;
    .end local v14    # "encryptionAlgname":Ljava/lang/String;
    .end local v25    # "sig":Ljava/security/Signature;
    .end local v26    # "tmp":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    .line 332
    sget-object v28, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 331
    invoke-virtual/range {v27 .. v28}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v8

    .line 330
    check-cast v8, Lsun/security/util/ObjectIdentifier;

    .line 333
    .local v8, "contentType":Lsun/security/util/ObjectIdentifier;
    if-eqz v8, :cond_3

    .line 334
    iget-object v0, v7, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    .line 340
    sget-object v28, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 339
    invoke-virtual/range {v27 .. v28}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v22

    .line 338
    check-cast v22, [B

    .line 342
    .local v22, "messageDigest":[B
    if-nez v22, :cond_4

    .line 343
    const/16 v27, 0x0

    return-object v27

    .line 335
    .end local v22    # "messageDigest":[B
    :cond_3
    const/16 v27, 0x0

    return-object v27

    .line 346
    .restart local v22    # "messageDigest":[B
    :cond_4
    invoke-static {v11}, Lsun/security/pkcs/SignerInfo;->convertToStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 345
    invoke-static/range {v27 .. v27}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v21

    .line 348
    .local v21, "md":Ljava/security/MessageDigest;
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v4, v0, [B

    .line 349
    .local v4, "buffer":[B
    const/16 v24, 0x0

    .line 350
    .local v24, "read":I
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v24

    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 351
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 437
    .end local v4    # "buffer":[B
    .end local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v11    # "digestAlgname":Ljava/lang/String;
    .end local v21    # "md":Ljava/security/MessageDigest;
    .end local v22    # "messageDigest":[B
    .end local v24    # "read":I
    :catch_0
    move-exception v12

    .line 438
    .local v12, "e":Ljava/io/IOException;
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "IO error verifying signature:\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 439
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    .line 438
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 353
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .restart local v11    # "digestAlgname":Ljava/lang/String;
    .restart local v21    # "md":Ljava/security/MessageDigest;
    .restart local v22    # "messageDigest":[B
    .restart local v24    # "read":I
    :cond_5
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 355
    .local v6, "computedMessageDigest":[B
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 356
    const/16 v27, 0x0

    return-object v27

    .line 357
    :cond_6
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_8

    .line 358
    aget-byte v27, v22, v15

    aget-byte v28, v6, v15

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 359
    const/16 v27, 0x0

    return-object v27

    .line 357
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 368
    :cond_8
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v9    # "dataSigned":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 389
    .end local v4    # "buffer":[B
    .end local v6    # "computedMessageDigest":[B
    .end local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v15    # "i":I
    .end local v21    # "md":Ljava/security/MessageDigest;
    .end local v22    # "messageDigest":[B
    .end local v24    # "read":I
    .restart local v3    # "algname":Ljava/lang/String;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v14    # "encryptionAlgname":Ljava/lang/String;
    .restart local v25    # "sig":Ljava/security/Signature;
    .restart local v26    # "tmp":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 390
    new-instance v27, Ljava/security/SignatureException;

    const-string/jumbo v28, "Certificate has unsupported critical extension(s)"

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    .end local v3    # "algname":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v9    # "dataSigned":Ljava/io/InputStream;
    .end local v11    # "digestAlgname":Ljava/lang/String;
    .end local v14    # "encryptionAlgname":Ljava/lang/String;
    .end local v25    # "sig":Ljava/security/Signature;
    .end local v26    # "tmp":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 442
    .local v13, "e":Ljava/security/InvalidKeyException;
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "InvalidKey: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v13}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 398
    .end local v13    # "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "algname":Ljava/lang/String;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v9    # "dataSigned":Ljava/io/InputStream;
    .restart local v11    # "digestAlgname":Ljava/lang/String;
    .restart local v14    # "encryptionAlgname":Ljava/lang/String;
    .restart local v25    # "sig":Ljava/security/Signature;
    .restart local v26    # "tmp":Ljava/lang/String;
    :cond_a
    :try_start_2
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    .line 399
    .local v20, "keyUsageBits":[Z
    if-eqz v20, :cond_b

    .line 406
    :try_start_3
    new-instance v19, Lsun/security/x509/KeyUsageExtension;

    invoke-direct/range {v19 .. v20}, Lsun/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1

    .line 413
    .local v19, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    :try_start_4
    const-string/jumbo v27, "digital_signature"

    .line 412
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 416
    .local v10, "digSigAllowed":Z
    const-string/jumbo v27, "non_repudiation"

    .line 415
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 418
    .local v23, "nonRepuAllowed":Z
    if-nez v10, :cond_b

    if-eqz v23, :cond_c

    .line 425
    .end local v10    # "digSigAllowed":Z
    .end local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v23    # "nonRepuAllowed":Z
    :cond_b
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v18

    .line 426
    .local v18, "key":Ljava/security/PublicKey;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 428
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v4, v0, [B

    .line 429
    .restart local v4    # "buffer":[B
    const/16 v24, 0x0

    .line 430
    .restart local v24    # "read":I
    :goto_3
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v24

    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 431
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/security/Signature;->update([BII)V

    goto :goto_3

    .line 407
    .end local v4    # "buffer":[B
    .end local v18    # "key":Ljava/security/PublicKey;
    .end local v24    # "read":I
    :catch_2
    move-exception v17

    .line 408
    .local v17, "ioe":Ljava/io/IOException;
    new-instance v27, Ljava/security/SignatureException;

    const-string/jumbo v28, "Failed to parse keyUsage extension"

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 419
    .end local v17    # "ioe":Ljava/io/IOException;
    .restart local v10    # "digSigAllowed":Z
    .restart local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .restart local v23    # "nonRepuAllowed":Z
    :cond_c
    new-instance v27, Ljava/security/SignatureException;

    const-string/jumbo v28, "Key usage restricted: cannot be used for digital signatures"

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 433
    .end local v10    # "digSigAllowed":Z
    .end local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v23    # "nonRepuAllowed":Z
    .restart local v4    # "buffer":[B
    .restart local v18    # "key":Ljava/security/PublicKey;
    .restart local v24    # "read":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v27

    if-eqz v27, :cond_e

    .line 434
    return-object p0

    .line 445
    :cond_e
    const/16 v27, 0x0

    return-object v27
.end method

.method verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v1}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
