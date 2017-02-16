.class public Lsun/security/util/SignatureFileVerifier;
.super Ljava/lang/Object;
.source "SignatureFileVerifier.java"


# static fields
.field private static final ATTR_DIGEST:Ljava/lang/String;

.field private static final debug:Lsun/security/util/Debug;

.field private static final hexc:[C


# instance fields
.field private block:Lsun/security/pkcs/PKCS7;

.field private certificateFactory:Ljava/security/cert/CertificateFactory;

.field private createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private md:Lsun/security/util/ManifestDigester;

.field private name:Ljava/lang/String;

.field private sfBytes:[B

.field private signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private workaround:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    .line 52
    const-string/jumbo v0, "-DIGEST-Manifest-Main-Attributes"

    .line 53
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 51
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    .line 588
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 587
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    .line 43
    return-void

    .line 588
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V
    .locals 3
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Lsun/security/util/ManifestDigester;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .local p1, "signerCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v2, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v0

    .line 96
    new-instance v1, Lsun/security/pkcs/PKCS7;

    invoke-direct {v1, p4}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    .line 97
    iget-object v1, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-virtual {v1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    .line 98
    const-string/jumbo v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 102
    const-string/jumbo v1, "."

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 103
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    .line 105
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    .line 89
    return-void

    .line 99
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 100
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 99
    throw v1
.end method

.method static contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z
    .locals 2
    .param p0, "set"    # [Ljava/security/CodeSigner;
    .param p1, "signer"    # Ljava/security/CodeSigner;

    .prologue
    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 610
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/security/CodeSigner;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    const/4 v1, 0x1

    return v1

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    .line 163
    :cond_0
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 165
    .local v0, "digest":Ljava/security/MessageDigest;
    if-nez v0, :cond_1

    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method private getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;
    .locals 9
    .param p1, "infos"    # [Lsun/security/pkcs/SignerInfo;
    .param p2, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 477
    const/4 v4, 0x0

    .line 479
    .local v4, "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    .end local v4    # "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 481
    aget-object v3, p1, v2

    .line 482
    .local v3, "info":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v3, p2}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v1

    .line 483
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v5, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v5, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 484
    .local v0, "certChain":Ljava/security/cert/CertPath;
    if-nez v4, :cond_0

    .line 485
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 488
    :cond_0
    new-instance v5, Ljava/security/CodeSigner;

    invoke-direct {p0, v3}, Lsun/security/util/SignatureFileVerifier;->getTimestamp(Lsun/security/pkcs/SignerInfo;)Ljava/security/Timestamp;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1

    .line 491
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Signature Block Certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 492
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 491
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 479
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "certChain":Ljava/security/cert/CertPath;
    .end local v1    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "info":Lsun/security/pkcs/SignerInfo;
    :cond_2
    if-eqz v4, :cond_3

    .line 497
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/CodeSigner;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/CodeSigner;

    return-object v5

    .line 499
    :cond_3
    return-object v8
.end method

.method private getTimestamp(Lsun/security/pkcs/SignerInfo;)Ljava/security/Timestamp;
    .locals 10
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v2, 0x0

    .line 530
    .local v2, "timestamp":Ljava/security/Timestamp;
    invoke-virtual {p1}, Lsun/security/pkcs/SignerInfo;->getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;

    move-result-object v8

    .line 531
    .local v8, "unsignedAttrs":Lsun/security/pkcs/PKCS9Attributes;
    if-eqz v8, :cond_0

    .line 533
    const-string/jumbo v9, "signatureTimestampToken"

    invoke-virtual {v8, v9}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v4

    .line 534
    .local v4, "timestampTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    if-eqz v4, :cond_0

    .line 536
    new-instance v3, Lsun/security/pkcs/PKCS7;

    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-direct {v3, v9}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 539
    .local v3, "timestampToken":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v1

    .line 543
    .local v1, "encodedTimestampTokenInfo":[B
    invoke-virtual {v3, v1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v6

    .line 546
    .local v6, "tsa":[Lsun/security/pkcs/SignerInfo;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9, v3}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v0

    .line 547
    .local v0, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v7

    .line 550
    .local v7, "tsaChain":Ljava/security/cert/CertPath;
    new-instance v5, Lsun/security/timestamp/TimestampToken;

    invoke-direct {v5, v1}, Lsun/security/timestamp/TimestampToken;-><init>([B)V

    .line 552
    .local v5, "timestampTokenInfo":Lsun/security/timestamp/TimestampToken;
    invoke-virtual {p1}, Lsun/security/pkcs/SignerInfo;->getEncryptedDigest()[B

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lsun/security/util/SignatureFileVerifier;->verifyTimestamp(Lsun/security/timestamp/TimestampToken;[B)V

    .line 555
    new-instance v2, Ljava/security/Timestamp;

    .end local v2    # "timestamp":Ljava/security/Timestamp;
    invoke-virtual {v5}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-direct {v2, v9, v7}, Ljava/security/Timestamp;-><init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V

    .line 558
    .end local v0    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "encodedTimestampTokenInfo":[B
    .end local v3    # "timestampToken":Lsun/security/pkcs/PKCS7;
    .end local v4    # "timestampTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    .end local v5    # "timestampTokenInfo":Lsun/security/timestamp/TimestampToken;
    .end local v6    # "tsa":[Lsun/security/pkcs/SignerInfo;
    .end local v7    # "tsaChain":Ljava/security/cert/CertPath;
    :cond_0
    return-object v2
.end method

.method public static isBlockOrSF(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string/jumbo v0, ".SF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string/jumbo v0, ".RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    const-string/jumbo v0, ".EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 149
    if-eqz v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .locals 3
    .param p0, "subset"    # [Ljava/security/CodeSigner;
    .param p1, "set"    # [Ljava/security/CodeSigner;

    .prologue
    const/4 v2, 0x1

    .line 620
    if-ne p1, p0, :cond_0

    .line 621
    return v2

    .line 624
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 625
    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    const/4 v1, 0x0

    return v1

    .line 624
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_2
    return v2
.end method

.method static matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .locals 5
    .param p0, "signers"    # [Ljava/security/CodeSigner;
    .param p1, "oldSigners"    # [Ljava/security/CodeSigner;
    .param p2, "newSigners"    # [Ljava/security/CodeSigner;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 640
    if-nez p1, :cond_0

    if-ne p0, p2, :cond_0

    .line 641
    return v2

    .line 646
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    :cond_1
    invoke-static {p2, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 651
    return v4

    .line 647
    :cond_2
    return v4

    .line 657
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_7

    .line 659
    if-eqz p1, :cond_4

    aget-object v3, p0, v1

    invoke-static {p1, v3}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 660
    :cond_4
    aget-object v3, p0, v1

    invoke-static {p2, v3}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v0

    .line 661
    .local v0, "found":Z
    :goto_1
    if-nez v0, :cond_6

    .line 662
    return v4

    .end local v0    # "found":Z
    :cond_5
    move v0, v2

    .line 659
    goto :goto_1

    .line 657
    .restart local v0    # "found":Z
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "found":Z
    :cond_7
    return v2
.end method

.method private processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    .locals 12
    .param p2, "manifestDigests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/util/jar/JarException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    new-instance v7, Ljava/util/jar/Manifest;

    invoke-direct {v7}, Ljava/util/jar/Manifest;-><init>()V

    .line 206
    .local v7, "sf":Ljava/util/jar/Manifest;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v9}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 209
    invoke-virtual {v7}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v9

    sget-object v10, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "version":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string/jumbo v9, "1.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 217
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    invoke-virtual {v9, v10}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 219
    .local v3, "infos":[Lsun/security/pkcs/SignerInfo;
    if-nez v3, :cond_1

    .line 220
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "cannot verify signature block file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 221
    iget-object v11, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    .line 220
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 214
    .end local v3    # "infos":[Lsun/security/pkcs/SignerInfo;
    :cond_0
    return-void

    .line 224
    .restart local v3    # "infos":[Lsun/security/pkcs/SignerInfo;
    :cond_1
    new-instance v0, Lsun/misc/BASE64Decoder;

    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 226
    .local v0, "decoder":Lsun/misc/BASE64Decoder;
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-direct {p0, v3, v9}, Lsun/security/util/SignatureFileVerifier;->getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;

    move-result-object v6

    .line 229
    .local v6, "newSigners":[Ljava/security/CodeSigner;
    if-nez v6, :cond_2

    .line 230
    return-void

    .line 233
    :cond_2
    invoke-virtual {v7}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 236
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v7, v9, v0, p2}, Lsun/security/util/SignatureFileVerifier;->verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;Ljava/util/List;)Z

    move-result v4

    .line 239
    .local v4, "manifestSigned":Z
    if-nez v4, :cond_3

    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v7, v9, v0}, Lsun/security/util/SignatureFileVerifier;->verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 245
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 250
    .local v5, "name":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/jar/Attributes;

    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v9, v5, v10, v0}, Lsun/security/util/SignatureFileVerifier;->verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z

    move-result v9

    .line 250
    if-eqz v9, :cond_8

    .line 253
    :cond_4
    const-string/jumbo v9, "./"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 254
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 256
    :cond_5
    const-string/jumbo v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 257
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 259
    :cond_6
    invoke-virtual {p0, v6, p1, v5}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 261
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    .line 262
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processSignature signed name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/SecurityException;

    .line 241
    const-string/jumbo v10, "Invalid signature file digest for Manifest main attributes"

    .line 240
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 265
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v5    # "name":Ljava/lang/String;
    :cond_8
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    .line 266
    sget-object v9, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processSignature unsigned name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v6, p1, v9}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 597
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 599
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 600
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 601
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;Ljava/util/List;)Z
    .locals 13
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "decoder"    # Lsun/misc/BASE64Decoder;
    .param p4, "manifestDigests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v7

    .line 284
    .local v7, "mattr":Ljava/util/jar/Attributes;
    const/4 v6, 0x0

    .line 287
    .local v6, "manifestSigned":Z
    invoke-virtual {v7}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "se$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 289
    .local v8, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "key":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-DIGEST-MANIFEST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x10

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-direct {p0, v1}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 298
    .local v3, "digest":Ljava/security/MessageDigest;
    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {p2, v3}, Lsun/security/util/ManifestDigester;->manifestDigest(Ljava/security/MessageDigest;)[B

    move-result-object v2

    .line 301
    .local v2, "computedHash":[B
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v4

    .line 303
    .local v4, "expectedHash":[B
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_1

    .line 304
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Signature File: Manifest digest "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 305
    invoke-virtual {v3}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 306
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  sigfile  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 307
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  computed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 308
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v10}, Lsun/security/util/Debug;->println()V

    .line 311
    :cond_1
    invoke-static {v2, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 313
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 320
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "computedHash":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "expectedHash":[B
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    return v6
.end method

.method private verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z
    .locals 14
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "decoder"    # Lsun/misc/BASE64Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v7

    .line 329
    .local v7, "mattr":Ljava/util/jar/Attributes;
    const/4 v2, 0x1

    .line 333
    .local v2, "attrsVerified":Z
    invoke-virtual {v7}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "se$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 334
    .local v9, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "key":Ljava/lang/String;
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 338
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    sget-object v12, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v1}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 341
    .local v4, "digest":Ljava/security/MessageDigest;
    if-eqz v4, :cond_0

    .line 343
    const-string/jumbo v11, "Manifest-Main-Attributes"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    move-result-object v8

    .line 344
    .local v8, "mde":Lsun/security/util/ManifestDigester$Entry;
    invoke-virtual {v8, v4}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 346
    .local v3, "computedHash":[B
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v5

    .line 348
    .local v5, "expectedHash":[B
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_1

    .line 349
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Signature File: Manifest Main Attributes digest "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 351
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    .line 349
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 352
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  sigfile  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 353
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  computed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 354
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v11}, Lsun/security/util/Debug;->println()V

    .line 357
    :cond_1
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v11

    if-nez v11, :cond_0

    .line 362
    const/4 v2, 0x0

    .line 363
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_2

    .line 364
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v12, "Verification of Manifest main attributes failed"

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 366
    sget-object v11, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v11}, Lsun/security/util/Debug;->println()V

    .line 377
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "computedHash":[B
    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "expectedHash":[B
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "mde":Lsun/security/util/ManifestDigester$Entry;
    .end local v9    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    return v2
.end method

.method private verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;Lsun/misc/BASE64Decoder;)Z
    .locals 15
    .param p1, "sfAttr"    # Ljava/util/jar/Attributes;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "md"    # Lsun/security/util/ManifestDigester;
    .param p4, "decoder"    # Lsun/misc/BASE64Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v9, 0x0

    .line 396
    .local v9, "oneDigestVerified":Z
    iget-object v12, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-virtual {v12}, Lsun/security/pkcs/PKCS7;->isOldStyle()Z

    move-result v12

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    move-result-object v7

    .line 398
    .local v7, "mde":Lsun/security/util/ManifestDigester$Entry;
    if-nez v7, :cond_0

    .line 399
    new-instance v12, Ljava/lang/SecurityException;

    .line 400
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no manifiest section for signature file entry "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 399
    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 403
    :cond_0
    if-eqz p1, :cond_7

    .line 409
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "se$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 410
    .local v10, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "key":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-DIGEST"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 414
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v2}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 418
    .local v4, "digest":Ljava/security/MessageDigest;
    if-eqz v4, :cond_1

    .line 419
    const/4 v8, 0x0

    .line 422
    .local v8, "ok":Z
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v5

    .line 424
    .local v5, "expected":[B
    iget-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    if-eqz v12, :cond_4

    .line 425
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 430
    .local v3, "computed":[B
    :goto_0
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_2

    .line 431
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Signature Block File: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 432
    const-string/jumbo v14, " digest="

    .line 431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 432
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    .line 431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 433
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  expected "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 434
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  computed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 435
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v12}, Lsun/security/util/Debug;->println()V

    .line 438
    :cond_2
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 439
    const/4 v9, 0x1

    .line 440
    const/4 v8, 0x1

    .line 456
    :cond_3
    :goto_1
    if-nez v8, :cond_1

    .line 457
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 458
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    .line 457
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 459
    const-string/jumbo v14, " signature file digest for "

    .line 457
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 427
    .end local v3    # "computed":[B
    :cond_4
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .restart local v3    # "computed":[B
    goto/16 :goto_0

    .line 443
    :cond_5
    iget-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    if-nez v12, :cond_3

    .line 444
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 445
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 446
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_6

    .line 447
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  re-computed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 448
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v12}, Lsun/security/util/Debug;->println()V

    .line 450
    :cond_6
    const/4 v12, 0x1

    iput-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    .line 451
    const/4 v9, 0x1

    .line 452
    const/4 v8, 0x1

    goto :goto_1

    .line 465
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "computed":[B
    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "expected":[B
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "ok":Z
    .end local v10    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "se$iterator":Ljava/util/Iterator;
    :cond_7
    return v9
.end method

.method private verifyTimestamp(Lsun/security/timestamp/TimestampToken;[B)V
    .locals 4
    .param p1, "token"    # Lsun/security/timestamp/TimestampToken;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 572
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashedMessage()[B

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature timestamp (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    const-string/jumbo v3, ") generated on "

    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v3

    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string/jumbo v3, " is inapplicable"

    .line 573
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    .line 579
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v1}, Lsun/security/util/Debug;->println()V

    .line 580
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Detected signature timestamp (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 581
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 581
    const-string/jumbo v3, ") generated on "

    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 581
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v3

    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 582
    sget-object v1, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v1}, Lsun/security/util/Debug;->println()V

    .line 567
    :cond_1
    return-void
.end method


# virtual methods
.method public needSignatureFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needSignatureFileBytes()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process(Ljava/util/Hashtable;Ljava/util/List;)V
    .locals 2
    .param p2, "manifestDigests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/util/jar/JarException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v0

    .line 193
    invoke-direct {p0, p1, p2}, Lsun/security/util/SignatureFileVerifier;->processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 186
    return-void

    .line 194
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 195
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 194
    throw v1
.end method

.method public setSignatureFile([B)V
    .locals 0
    .param p1, "sfBytes"    # [B

    .prologue
    .line 135
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    .line 133
    return-void
.end method

.method updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 6
    .param p1, "newSigners"    # [Ljava/security/CodeSigner;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/CodeSigner;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    const/4 v5, 0x0

    .line 670
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    .line 677
    .local v2, "oldSigners":[Ljava/security/CodeSigner;
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 678
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 679
    .local v0, "cachedSigners":[Ljava/security/CodeSigner;
    invoke-static {v0, v2, p1}, Lsun/security/util/SignatureFileVerifier;->matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    return-void

    .line 677
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 685
    .end local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_1
    if-nez v2, :cond_2

    .line 686
    move-object v0, p1

    .line 695
    .restart local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :goto_1
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    return-void

    .line 689
    .end local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_2
    array-length v3, v2

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/security/CodeSigner;

    .line 691
    .restart local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    array-length v3, v2

    .line 690
    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    array-length v3, v2

    .line 693
    array-length v4, p1

    .line 692
    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
