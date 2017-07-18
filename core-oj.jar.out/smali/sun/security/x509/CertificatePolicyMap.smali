.class public Lsun/security/x509/CertificatePolicyMap;
.super Ljava/lang/Object;
.source "CertificatePolicyMap.java"


# instance fields
.field private issuerDomain:Lsun/security/x509/CertificatePolicyId;

.field private subjectDomain:Lsun/security/x509/CertificatePolicyId;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid encoding for CertificatePolicyMap"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lsun/security/x509/CertificatePolicyId;

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    new-instance v0, Lsun/security/x509/CertificatePolicyId;

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    return-void
.end method

.method public constructor <init>(Lsun/security/x509/CertificatePolicyId;Lsun/security/x509/CertificatePolicyId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    iput-object p2, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

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

    iget-object v1, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    iget-object v1, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v1, v0}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    return-object v0
.end method

.method public getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CertificatePolicyMap: [\nIssuerDomain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CertificatePolicyMap;->issuerDomain:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "SubjectDomain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CertificatePolicyMap;->subjectDomain:Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v2}, Lsun/security/x509/CertificatePolicyId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
