.class public Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
.super Ljava/lang/Object;
.source "HotspotDMCertificateValidation.java"


# static fields
.field private static final CLIENT_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final GEN_NAMES_TAG:Ljava/lang/String; = "2"

.field private static final LOGO_TYPE_EXTN:Ljava/lang/String; = "1.3.6.1.5.5.7.1.12"

.field private static final TAG:Ljava/lang/String; = "HotspotDMCertificateValidation"


# instance fields
.field private HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

.field private OSU_SERVER:Ljava/lang/String;

.field private OTHER_NAME_TAG:I

.field private iconHash:Ljava/lang/String;

.field private mServerCertificate:[Ljava/security/cert/X509Certificate;

.field private mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;)V
    .locals 1
    .param p1, "serverCertificate"    # [Ljava/security/cert/X509Certificate;
    .param p2, "validationParameters"    # Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "OSU"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OSU_SERVER:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OTHER_NAME_TAG:I

    .line 60
    const-string/jumbo v0, "1.3.6.1.4.1.40808.1.1.1"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    .line 67
    iget-object v0, p2, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverUri:Ljava/lang/String;

    iput-object v0, p2, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    .line 65
    return-void
.end method

.method private filenameFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHashFromSeq(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .locals 7
    .param p1, "enu"    # Ljava/util/Enumeration;

    .prologue
    .line 421
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 423
    .local v1, "HashAlgAndValue":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v4, "HotspotDMCertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HashAlgAndValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 425
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 427
    .local v2, "hashAlg":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v4, "HotspotDMCertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hashAlg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 430
    .local v3, "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    const-string/jumbo v4, "HotspotDMCertificateValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hashValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 432
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 434
    .local v0, "AlgorithmIdentifier":Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const-string/jumbo v4, "HotspotDMCertificateValidation"

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AlgorithmIdentifier:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 436
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-object v3
.end method

.method private getHashSeqFromLogoTypeDetails(Lcom/android/org/bouncycastle/asn1/DERSequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .locals 8
    .param p1, "imageDetails"    # Lcom/android/org/bouncycastle/asn1/DERSequence;

    .prologue
    .line 447
    const-string/jumbo v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imageDetails:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 450
    .local v0, "enu":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .line 451
    .local v4, "mediaType":Lcom/android/org/bouncycastle/asn1/DERIA5String;
    const-string/jumbo v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mediaType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 454
    .local v1, "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logotypeHash:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 456
    .local v2, "logotypeURI":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logotypeURI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    .line 461
    .local v3, "logotypeURIStr":Lcom/android/org/bouncycastle/asn1/DERIA5String;
    const-string/jumbo v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "logotypeURIStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v5, "HotspotDMCertificateValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filename : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->filenameFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-object v1
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 301
    const/16 v3, 0x10

    new-array v1, v3, [C

    .local v1, "hexDigits":[C
    fill-array-data v1, :array_0

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 305
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 306
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 301
    nop

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

.method private isLanguageAndNamesMatched(Ljava/security/cert/X509Certificate;)Z
    .locals 27
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 505
    const/16 v19, 0x0

    .line 506
    .local v19, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->friendlyNames:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 507
    const/16 v24, 0x0

    return v24

    .line 510
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v6

    .line 511
    .local v6, "c":Ljava/util/Collection;
    if-eqz v6, :cond_4

    .line 512
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 513
    .local v16, "it":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 514
    .local v4, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v3, 0x0

    .line 515
    .local v3, "asn1Obj":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 516
    .local v9, "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const/4 v8, 0x0

    .line 517
    .local v8, "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v13, 0x0

    .line 518
    .local v13, "enu":Ljava/util/Enumeration;
    const/16 v17, 0x0

    .line 519
    .local v17, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v5, 0x0

    .line 520
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v10, 0x0

    .line 521
    .local v10, "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const/4 v7, 0x0

    .line 522
    .end local v3    # "asn1Obj":Ljava/lang/Object;
    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v13    # "enu":Ljava/util/Enumeration;
    .end local v17    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 523
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 524
    .local v15, "gn":Ljava/util/List;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OTHER_NAME_TAG:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 525
    .local v23, "tag":Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-nez v24, :cond_1

    .line 526
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "SubjectAltName OtherName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 528
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 529
    .local v4, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 530
    .restart local v3    # "asn1Obj":Ljava/lang/Object;
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object v0, v3

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    move-object v9, v0

    .line 532
    .local v9, "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 533
    .local v8, "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 534
    .local v13, "enu":Ljava/util/Enumeration;
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 536
    .local v17, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "    OID:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->HOTSPOT_2_0_FREINDLY_NAME_OID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 538
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 540
    .local v10, "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 542
    .local v7, "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    instance-of v0, v7, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 543
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v22

    check-cast v22, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    .line 545
    .local v22, "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DERUTF8String;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 551
    .end local v22    # "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DERUTF8String;
    .local v20, "spLangFriendlyName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    .line 552
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "language code and friendly name:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 553
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    .line 552
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 551
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/16 v24, 0x0

    const/16 v25, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 556
    .local v18, "osuLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->friendlyNames:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 558
    .local v14, "friendlyName":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 559
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    const-string/jumbo v25, "Language code match"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mvalidationParameters.friendlyName = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v24, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 563
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    const-string/jumbo v25, "OSU friendly name match"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/16 v19, 0x1

    .line 565
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V

    .line 566
    return v19

    .line 547
    .end local v14    # "friendlyName":Ljava/lang/String;
    .end local v18    # "osuLanguage":Ljava/lang/String;
    .end local v20    # "spLangFriendlyName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 549
    .local v21, "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "spLangFriendlyName":Ljava/lang/String;
    goto/16 :goto_1

    .line 568
    .end local v21    # "spLangFriendlyNameDERString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v14    # "friendlyName":Ljava/lang/String;
    .restart local v18    # "osuLanguage":Ljava/lang/String;
    :cond_3
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    const-string/jumbo v25, "OSU friendly name not match"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 578
    .end local v3    # "asn1Obj":Ljava/lang/Object;
    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "c":Ljava/util/Collection;
    .end local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v13    # "enu":Ljava/util/Enumeration;
    .end local v14    # "friendlyName":Ljava/lang/String;
    .end local v15    # "gn":Ljava/util/List;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v17    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "osuLanguage":Ljava/lang/String;
    .end local v20    # "spLangFriendlyName":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/Integer;
    :catch_0
    move-exception v12

    .line 579
    .local v12, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 583
    .end local v12    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_4
    :goto_2
    return v19

    .line 571
    .restart local v3    # "asn1Obj":Ljava/lang/Object;
    .restart local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "c":Ljava/util/Collection;
    .restart local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .restart local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .restart local v13    # "enu":Ljava/util/Enumeration;
    .restart local v14    # "friendlyName":Ljava/lang/String;
    .restart local v15    # "gn":Ljava/util/List;
    .restart local v16    # "it":Ljava/util/Iterator;
    .restart local v17    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v18    # "osuLanguage":Ljava/lang/String;
    .restart local v20    # "spLangFriendlyName":Ljava/lang/String;
    .restart local v23    # "tag":Ljava/lang/Integer;
    :cond_5
    :try_start_1
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    const-string/jumbo v25, "Language code not match"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 580
    .end local v3    # "asn1Obj":Ljava/lang/Object;
    .end local v4    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "c":Ljava/util/Collection;
    .end local v7    # "derObj":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .end local v8    # "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "derTagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v10    # "dertagObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v13    # "enu":Ljava/util/Enumeration;
    .end local v14    # "friendlyName":Ljava/lang/String;
    .end local v15    # "gn":Ljava/util/List;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v17    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "osuLanguage":Ljava/lang/String;
    .end local v20    # "spLangFriendlyName":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/Integer;
    :catch_1
    move-exception v11

    .line 581
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 576
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Ljava/util/Collection;
    .restart local v16    # "it":Ljava/util/Iterator;
    :cond_6
    :try_start_2
    const-string/jumbo v24, "HotspotDMCertificateValidation"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Subject Alternative Names:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private isLogoTypeExtensionMatched(Ljava/security/cert/X509Certificate;)Z
    .locals 29
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    const-string/jumbo v26, "SHA256"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->getIconHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->iconHash:Ljava/lang/String;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->iconHash:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 316
    const/16 v26, 0x1

    return v26

    .line 318
    :cond_0
    const/16 v25, 0x1

    .line 321
    .local v25, "result":Z
    :try_start_0
    const-string/jumbo v26, "1.3.6.1.5.5.7.1.12"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v22

    .line 322
    .local v22, "logoType":[B
    if-eqz v22, :cond_6

    .line 323
    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 324
    .local v12, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    .local v11, "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v14

    check-cast v14, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 326
    .local v14, "derObj":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v12

    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    check-cast v12, Ljava/io/ByteArrayInputStream;

    .line 327
    .restart local v12    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 328
    .restart local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v23

    check-cast v23, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 329
    .local v23, "logoTypeExt":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v11}, Ljava/io/FilterInputStream;->close()V

    .line 330
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "LogotypeExtn:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 332
    .local v7, "LogotypeExtnSequence":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 333
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 335
    .local v8, "LogotypeExtnTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "LogotypeExtnTaggedObj:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "LogotypeExtnTaggedObj CHOICE: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v26

    if-nez v26, :cond_1

    .line 345
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    const-string/jumbo v27, ""

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 347
    .local v2, "CommunityLogos":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "communityLogos:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 350
    .local v3, "CommunityLogosEnu":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 351
    const/16 v25, 0x1

    .line 352
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 354
    .local v4, "CommunityLogosTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CommunityLogosTaggedObj CHOICE: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 355
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v28

    .line 354
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v26

    if-nez v26, :cond_2

    .line 366
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 369
    .local v5, "LogotypeData":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "LogotypeImage:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 371
    .local v6, "LogotypeDataEnu":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 377
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 379
    .local v9, "LogotypeImage":Lcom/android/org/bouncycastle/asn1/DERSequence;
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "LogotypeImage:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v10

    .line 381
    .local v10, "LogotypeImageEnu":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 382
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 384
    .local v20, "imageDetails":Lcom/android/org/bouncycastle/asn1/DERSequence;
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v21

    check-cast v21, Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 386
    .local v21, "imageInfo":Lcom/android/org/bouncycastle/asn1/DERSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->printImageInfo(Lcom/android/org/bouncycastle/asn1/DERSequence;)V

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->getHashSeqFromLogoTypeDetails(Lcom/android/org/bouncycastle/asn1/DERSequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v24

    .line 389
    .local v24, "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v17

    .line 390
    .local v17, "enu":Ljava/util/Enumeration;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->getHashFromSeq(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEROctetString;

    move-result-object v18

    .line 392
    .local v18, "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v19

    .line 393
    .local v19, "hashValueOctetString":[B
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 394
    .local v13, "certIconHash":Ljava/lang/String;
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "hashValue String:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->iconHash:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 396
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    const-string/jumbo v27, "Icon hash match"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v26, 0x1

    return v26

    .line 399
    :cond_4
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    const-string/jumbo v27, "Icon hash not match"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v25, 0x0

    .line 401
    goto/16 :goto_0

    .line 409
    .end local v2    # "CommunityLogos":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v3    # "CommunityLogosEnu":Ljava/util/Enumeration;
    .end local v4    # "CommunityLogosTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v5    # "LogotypeData":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v6    # "LogotypeDataEnu":Ljava/util/Enumeration;
    .end local v8    # "LogotypeExtnTaggedObj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    .end local v9    # "LogotypeImage":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v10    # "LogotypeImageEnu":Ljava/util/Enumeration;
    .end local v13    # "certIconHash":Ljava/lang/String;
    .end local v17    # "enu":Ljava/util/Enumeration;
    .end local v18    # "hashValue":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v19    # "hashValueOctetString":[B
    .end local v20    # "imageDetails":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v21    # "imageInfo":Lcom/android/org/bouncycastle/asn1/DERSequence;
    .end local v24    # "logotypeHash":Lcom/android/org/bouncycastle/asn1/DERSequence;
    :cond_5
    const-string/jumbo v26, "HotspotDMCertificateValidation"

    const-string/jumbo v27, "LogotypeExtn parsing done"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return v25

    .line 414
    .end local v7    # "LogotypeExtnSequence":Ljava/util/Enumeration;
    .end local v11    # "asn1_is":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v12    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "derObj":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v22    # "logoType":[B
    .end local v23    # "logoTypeExt":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v15

    .line 415
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    .end local v15    # "e":Ljava/io/IOException;
    :cond_6
    :goto_1
    const/16 v26, 0x0

    return v26

    .line 412
    :catch_1
    move-exception v16

    .line 413
    .local v16, "e":Ljava/lang/SecurityException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private printCertProp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v1, "HotspotDMCertificateValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "printCertProp:length of the certs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    const-string/jumbo v1, "HotspotDMCertificateValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "printCertProp:cert issuer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    iget-object v3, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method private printImageInfo(Lcom/android/org/bouncycastle/asn1/DERSequence;)V
    .locals 5
    .param p1, "imageInfo"    # Lcom/android/org/bouncycastle/asn1/DERSequence;

    .prologue
    .line 475
    const-string/jumbo v2, "HotspotDMCertificateValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imageInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 477
    .local v0, "enu":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 479
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    const-string/jumbo v2, "HotspotDMCertificateValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "object:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->printLanGuageCode(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V

    goto :goto_0

    .line 473
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :cond_0
    return-void
.end method

.method private printLanGuageCode(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V
    .locals 6
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .prologue
    .line 485
    instance-of v3, p1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 486
    nop

    nop

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 487
    nop

    nop

    .end local p1    # "info":Lcom/android/org/bouncycastle/asn1/ASN1Object;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 488
    .local v1, "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    const/4 v2, 0x0

    .line 490
    .local v2, "languageCode":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 494
    .end local v2    # "languageCode":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "HotspotDMCertificateValidation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imageInfo language code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v1    # "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :cond_0
    return-void

    .line 491
    .restart local v1    # "language":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .restart local v2    # "languageCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public attributeValidation([Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "mServerCertificate"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 168
    .local v0, "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 169
    .local v1, "attributeValidationFlag":Z
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, "extendedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "HotspotDMCertificateValidation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attributeValidation:extendedKeys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v2, :cond_0

    .line 172
    const-string/jumbo v3, "1.3.6.1.5.5.7.3.2"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const-string/jumbo v3, "HotspotDMCertificateValidation"

    const-string/jumbo v4, "attributeValidation:It contains Clientauth attribute ABORT_OSU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public extendedValidation([Ljava/security/cert/X509Certificate;)Z
    .locals 10
    .param p1, "mServerCertificate"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v4, 0x1

    .line 110
    .local v4, "extendedValidationFlag":Z
    const/4 v7, 0x0

    :try_start_0
    aget-object v0, p1, v7

    .line 111
    .local v0, "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    .line 112
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    .line 113
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 114
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v5

    .line 115
    .local v5, "keyUsage":[Z
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    .line 117
    .local v6, "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 118
    .local v2, "SubjDnsType":Z
    invoke-virtual {p0, v5}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->keyUsageCheck([Z)Z

    .line 119
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 120
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:Subject-alt-name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 121
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    .line 124
    .local v1, "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->subAltNameMatch(Ljava/util/Collection;)Z

    move-result v4

    .line 125
    .local v4, "extendedValidationFlag":Z
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-boolean v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->sim:Z

    if-nez v7, :cond_0

    .line 126
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OSU_SERVER:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v8, v8, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 125
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 128
    invoke-direct {p0, v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->isLanguageAndNamesMatched(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 130
    .end local v1    # "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v4    # "extendedValidationFlag":Z
    :cond_0
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:mvalidationParameters.serverType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 131
    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v9, v9, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverType:Ljava/lang/String;

    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 131
    const-string/jumbo v9, " SubjDnsType: "

    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 132
    const-string/jumbo v9, " rfc5280ValidationFlag: "

    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 134
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:noncritical_extensions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-boolean v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->sim:Z

    if-nez v7, :cond_1

    .line 136
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->OSU_SERVER:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v8, v8, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 135
    if-eqz v7, :cond_1

    .line 137
    const-string/jumbo v7, "1.3.6.1.5.5.7.1.12"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 138
    invoke-direct {p0, v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->isLogoTypeExtensionMatched(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 139
    .restart local v4    # "extendedValidationFlag":Z
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:logoMatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v4    # "extendedValidationFlag":Z
    :cond_1
    :goto_0
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "certificate_version = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    if-eqz v4, :cond_2

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, "extendedValidationFlag":Z
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "rfc5280Validation:ServerRootCertificate version incorrect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "SubjDnsType":Z
    .end local v4    # "extendedValidationFlag":Z
    .end local v5    # "keyUsage":[Z
    .end local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rfc5280Validation:final rfc5280ValidationFlag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v4

    .line 141
    .restart local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .restart local v2    # "SubjDnsType":Z
    .restart local v5    # "keyUsage":[Z
    .restart local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    .line 142
    .restart local v4    # "extendedValidationFlag":Z
    :try_start_1
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "rfc5280Validation:Cert doesnt contain Logotype  extension"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    .end local v0    # "ServerRootCertificate":Ljava/security/cert/X509Certificate;
    .end local v2    # "SubjDnsType":Z
    .end local v4    # "extendedValidationFlag":Z
    .end local v5    # "keyUsage":[Z
    .end local v6    # "noncritical_Extensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "rfc5280Validation:Certificate validation failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getIconHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "algoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 263
    .local v1, "IconBytes":[B
    const/4 v3, 0x0

    .line 264
    .local v3, "bytesRead":I
    const/4 v8, 0x0

    .line 265
    .local v8, "icon_file":Ljava/io/File;
    const/4 v6, 0x0

    .line 266
    .local v6, "hexString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 268
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v12, v12, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->iconPath:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 269
    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "/data/hs20/icons/"

    .line 270
    iget-object v13, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v13, v13, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->iconPath:Ljava/lang/String;

    .line 269
    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v8    # "icon_file":Ljava/io/File;
    .local v9, "icon_file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 272
    const/4 v12, 0x0

    return-object v12

    .line 273
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 274
    .local v7, "iconDigest":Ljava/security/MessageDigest;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    .local v0, "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .local v11, "icon_stream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v11, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_2

    .line 277
    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 285
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "icon_stream":Ljava/io/FileInputStream;
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 286
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "iconDigest":Ljava/security/MessageDigest;
    .end local v9    # "icon_file":Ljava/io/File;
    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v12, "HotspotDMCertificateValidation"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getIconHash:exception occured:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    if-eqz v10, :cond_1

    .line 291
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 297
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "hexString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v6

    .line 279
    .restart local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "hexString":Ljava/lang/String;
    .restart local v7    # "iconDigest":Ljava/security/MessageDigest;
    .restart local v9    # "icon_file":Ljava/io/File;
    .restart local v11    # "icon_stream":Ljava/io/FileInputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 280
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 281
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 282
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 283
    .local v2, "bytes":[B
    invoke-static {v2}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->hexify([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    .local v6, "hexString":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v10    # "icon_stream":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 290
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v6    # "hexString":Ljava/lang/String;
    .end local v7    # "iconDigest":Ljava/security/MessageDigest;
    .end local v9    # "icon_file":Ljava/io/File;
    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v10, :cond_1

    .line 291
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 293
    :catch_1
    move-exception v4

    .line 294
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 293
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "e":Ljava/lang/Exception;
    .local v6, "hexString":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 294
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 288
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 290
    :goto_3
    if-eqz v10, :cond_4

    .line 291
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 288
    :cond_4
    :goto_4
    throw v12

    .line 293
    :catch_3
    move-exception v4

    .line 294
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 288
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "icon_file":Ljava/io/File;
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "icon_file":Ljava/io/File;
    .local v8, "icon_file":Ljava/io/File;
    goto :goto_3

    .end local v8    # "icon_file":Ljava/io/File;
    .end local v10    # "icon_stream":Ljava/io/FileInputStream;
    .restart local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "iconDigest":Ljava/security/MessageDigest;
    .restart local v9    # "icon_file":Ljava/io/File;
    .restart local v11    # "icon_stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11    # "icon_stream":Ljava/io/FileInputStream;
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "icon_file":Ljava/io/File;
    .restart local v8    # "icon_file":Ljava/io/File;
    goto :goto_3

    .line 285
    .end local v0    # "IconByteOutStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "iconDigest":Ljava/security/MessageDigest;
    .local v8, "icon_file":Ljava/io/File;
    .local v10, "icon_stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "icon_file":Ljava/io/File;
    .restart local v9    # "icon_file":Ljava/io/File;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "icon_file":Ljava/io/File;
    .local v8, "icon_file":Ljava/io/File;
    goto :goto_1
.end method

.method public keyUsageCheck([Z)Z
    .locals 3
    .param p1, "keyUsage"    # [Z

    .prologue
    .line 221
    const/4 v0, 0x1

    .line 222
    .local v0, "keyUsageValidationFlag":Z
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    .line 223
    const-string/jumbo v1, "HotspotDMCertificateValidation"

    const-string/jumbo v2, "keyUsageCheck;have both encipherment and signing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    const-string/jumbo v1, "HotspotDMCertificateValidation"

    const-string/jumbo v2, "keyUsageCheck:either of encipherment and signing is missing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public subAltNameMatch(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "SubaltList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "subAltNameMatch:"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v6, 0x1

    .line 183
    .local v6, "subAltMatchFlag":Z
    const/4 v5, 0x0

    .line 184
    .local v5, "mserverUri":Ljava/net/URI;
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverUri:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 185
    new-instance v5, Ljava/net/URI;

    .end local v5    # "mserverUri":Ljava/net/URI;
    iget-object v7, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v7, v7, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->serverUri:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 190
    .local v5, "mserverUri":Ljava/net/URI;
    const/4 v3, 0x0

    .line 191
    .local v3, "genNames":Ljava/lang/String;
    const/4 v4, 0x0

    .line 192
    .local v4, "match":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .end local v3    # "genNames":Ljava/lang/String;
    .local v1, "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    .local v0, "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "genNames":Ljava/lang/String;
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:genNames "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string/jumbo v7, "2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "dnsName":Ljava/lang/String;
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:dnsName from certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    const/4 v4, 0x1

    .line 203
    const/4 v6, 0x1

    .line 204
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    .line 205
    const-string/jumbo v8, "subAltNameMatch:Domain Name or UrlWnmframe is suffix match for subject at name"

    .line 204
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .end local v2    # "dnsName":Ljava/lang/String;
    .end local v3    # "genNames":Ljava/lang/String;
    .end local v4    # "match":Z
    .local v5, "mserverUri":Ljava/net/URI;
    :cond_2
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    const-string/jumbo v8, "subAltNameMatch:server uri is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v7, 0x0

    return v7

    .line 207
    .restart local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "SubaltGenNamesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .restart local v2    # "dnsName":Ljava/lang/String;
    .restart local v3    # "genNames":Ljava/lang/String;
    .restart local v4    # "match":Z
    .local v5, "mserverUri":Ljava/net/URI;
    :cond_3
    const/4 v6, 0x0

    .line 208
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:dnsName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:mserverUri.getHost() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    .line 211
    const-string/jumbo v8, "subAltNameMatch:Domain Name or UrlWnmframe is not suffix match for subject at name"

    .line 210
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v0    # "OidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "dnsName":Ljava/lang/String;
    .end local v3    # "genNames":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "HotspotDMCertificateValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subAltNameMatch:rfcflag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v6
.end method

.method public subCnMatch(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .param p1, "ServerRootCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 232
    const/4 v3, 0x1

    .line 233
    .local v3, "rfc5280ValidationFlag":Z
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 234
    .local v2, "principal":Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    .line 235
    .local v5, "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    const/4 v0, 0x0

    .line 236
    .local v0, "CN":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 237
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .end local v5    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 238
    .local v5, "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 239
    .local v1, "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    .line 241
    .local v4, "typeValue":Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    if-eqz v4, :cond_0

    .line 242
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->valueToString(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .end local v0    # "CN":Ljava/lang/String;
    .end local v4    # "typeValue":Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    :cond_0
    if-eqz v0, :cond_2

    .line 246
    iget-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v6, v6, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 247
    iget-object v6, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v6, v6, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 245
    if-eqz v6, :cond_2

    .line 248
    const-string/jumbo v6, "HotspotDMCertificateValidation"

    const-string/jumbo v7, "subCnMatch:fqdnName is suffix match for  CN portion subject names"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v1    # "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v5    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_1
    :goto_0
    return v3

    .line 250
    .restart local v1    # "cn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .restart local v5    # "x500name":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_2
    const/4 v3, 0x0

    .line 251
    const-string/jumbo v6, "HotspotDMCertificateValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subCnMatch:Comman name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string/jumbo v6, "HotspotDMCertificateValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subCnMatch:mvalidationParameters.fqdnName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mvalidationParameters:Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    iget-object v8, v8, Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;->fqdnName:Ljava/lang/String;

    .line 252
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string/jumbo v6, "HotspotDMCertificateValidation"

    .line 255
    const-string/jumbo v7, "subCnMatch:mvalidationParameters.fqdnName is Not suffix  match for subject names"

    .line 254
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public validate()Z
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "validationFlag":Z
    const-string/jumbo v2, "HotspotDMCertificateValidation"

    const-string/jumbo v3, "validate:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->printCertProp()V

    .line 84
    iget-object v2, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->extendedValidation([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->mServerCertificate:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->attributeValidation([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 88
    :cond_0
    const-string/jumbo v2, "HotspotDMCertificateValidation"

    const-string/jumbo v3, "validate: attributeValidation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    const/4 v2, 0x0

    return v2

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "HotspotDMCertificateValidation"

    const-string/jumbo v3, "validate: rfc5280Validation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
