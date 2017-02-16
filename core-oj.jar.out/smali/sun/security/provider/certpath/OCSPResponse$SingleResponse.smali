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
    .param p1, "der"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iget-byte v8, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x30

    if-eq v8, v9, :cond_0

    .line 687
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad ASN.1 encoding in SingleResponse"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 689
    :cond_0
    iget-object v7, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 691
    .local v7, "tmp":Lsun/security/util/DerInputStream;
    new-instance v8, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    iget-object v9, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v8, v9}, Lsun/security/provider/certpath/CertId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    .line 692
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 693
    .local v0, "derVal":Lsun/security/util/DerValue;
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    .line 694
    .local v6, "tag":S
    if-ne v6, v12, :cond_7

    .line 695
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    .line 696
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    .line 697
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_6

    .line 698
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 699
    .local v1, "dv":Lsun/security/util/DerValue;
    iget-byte v8, v1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    .line 700
    if-nez v6, :cond_5

    .line 701
    iget-object v8, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v4

    .line 703
    .local v4, "reason":I
    if-ltz v4, :cond_4

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 704
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    move-result-object v8

    aget-object v8, v8, v4

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 715
    .end local v1    # "dv":Lsun/security/util/DerValue;
    .end local v4    # "reason":I
    :goto_0
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 716
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

    .line 717
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

    .line 731
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    .line 733
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-nez v8, :cond_a

    .line 735
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    .line 754
    :cond_2
    :goto_2
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-lez v8, :cond_f

    .line 755
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 756
    invoke-virtual {v0, v12}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 757
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 759
    .local v5, "singleExtDer":[Lsun/security/util/DerValue;
    new-instance v8, Ljava/util/HashMap;

    .line 760
    array-length v9, v5

    .line 759
    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 758
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    .line 761
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v8, v5

    if-ge v3, v8, :cond_e

    .line 762
    new-instance v2, Lsun/security/x509/Extension;

    aget-object v8, v5, v3

    invoke-direct {v2, v8}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 763
    .local v2, "ext":Lsun/security/x509/Extension;
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 764
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

    .line 769
    :cond_3
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 770
    new-instance v8, Ljava/io/IOException;

    .line 771
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported OCSP critical extension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 772
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    .line 771
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 770
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 706
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v3    # "i":I
    .end local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    .restart local v1    # "dv":Lsun/security/util/DerValue;
    .restart local v4    # "reason":I
    :cond_4
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_0

    .line 709
    .end local v4    # "reason":I
    :cond_5
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_0

    .line 712
    .end local v1    # "dv":Lsun/security/util/DerValue;
    :cond_6
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto/16 :goto_0

    .line 720
    :cond_7
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    .line 721
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 722
    if-nez v6, :cond_8

    .line 723
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto/16 :goto_1

    .line 724
    :cond_8
    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    .line 725
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto/16 :goto_1

    .line 727
    :cond_9
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid certificate status"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 737
    :cond_a
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 738
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    .line 739
    if-nez v6, :cond_b

    .line 741
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    .line 743
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_2

    .line 746
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 747
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    int-to-short v6, v8

    goto/16 :goto_2

    .line 750
    :cond_b
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    goto/16 :goto_2

    .line 774
    .restart local v2    # "ext":Lsun/security/x509/Extension;
    .restart local v3    # "i":I
    .restart local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    :cond_c
    iget-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-virtual {v2}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 777
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v3    # "i":I
    .end local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    .line 685
    :cond_e
    :goto_4
    return-void

    .line 780
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    goto :goto_4
.end method

.method synthetic constructor <init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V
    .locals 0
    .param p1, "der"    # Lsun/security/util/DerValue;

    .prologue
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;)V

    return-void
.end method

.method private getCertId()Lsun/security/provider/certpath/CertId;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    return-object v0
.end method


# virtual methods
.method public getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 796
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

    .prologue
    .line 805
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SingleResponse:  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 815
    const-string/jumbo v1, "\nCertStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    if-ne v1, v2, :cond_0

    .line 817
    const-string/jumbo v1, "revocationTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const-string/jumbo v1, "revocationReason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_0
    const-string/jumbo v1, "thisUpdate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 822
    const-string/jumbo v1, "nextUpdate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
