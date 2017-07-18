.class final Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"

# interfaces
.implements Lsun/security/provider/certpath/OCSP$RevocationStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleResponse"
.end annotation


# instance fields
.field private final certId:Lsun/security/provider/certpath/CertId;

.field private final certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field private final nextUpdate:Ljava/util/Date;

.field private final revocationReason:Ljava/security/cert/CRLReason;

.field private final revocationTime:Ljava/util/Date;

.field private final singleExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final thisUpdate:Ljava/util/Date;


# direct methods
.method static synthetic -get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic -get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;
    .locals 1

    invoke-direct {p0}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertId()Lsun/security/provider/certpath/CertId;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lsun/security/util/DerValue;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v8, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x30

    if-eq v8, v9, :cond_0

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad ASN.1 encoding in SingleResponse"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-object v7, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    new-instance v8, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    iget-object v9, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v8, v9}, Lsun/security/provider/certpath/CertId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    if-ne v6, v12, :cond_7

    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    iget-byte v8, v1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    if-nez v6, :cond_5

    iget-object v8, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v4

    if-ltz v4, :cond_4

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_4

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    move-result-object v8

    aget-object v8, v8, v4

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    :goto_0
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Revocation time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Revocation reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-nez v8, :cond_a

    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    :cond_2
    :goto_2
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-lez v8, :cond_f

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v12}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    new-instance v8, Ljava/util/HashMap;

    array-length v9, v5

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    const/4 v3, 0x0

    :goto_3
    array-length v8, v5

    if-ge v3, v8, :cond_e

    new-instance v2, Lsun/security/x509/Extension;

    aget-object v8, v5, v3

    invoke-direct {v2, v8}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "OCSP single extension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported OCSP critical extension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_0

    :cond_5
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_0

    :cond_6
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_0

    :cond_7
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    if-nez v6, :cond_8

    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto/16 :goto_1

    :cond_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid certificate status"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    if-nez v6, :cond_b

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    goto/16 :goto_2

    :cond_b
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    goto/16 :goto_2

    :cond_c
    iget-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-virtual {v2}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    :cond_e
    :goto_4
    return-void

    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    goto :goto_4
.end method

.method synthetic constructor <init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;)V

    return-void
.end method

.method private getCertId()Lsun/security/provider/certpath/CertId;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    return-object v0
.end method


# virtual methods
.method public getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSingleExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SingleResponse:  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nCertStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "revocationTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "revocationReason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "thisUpdate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nextUpdate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
