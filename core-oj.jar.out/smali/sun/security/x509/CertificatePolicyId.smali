.class public Lsun/security/x509/CertificatePolicyId;
.super Ljava/lang/Object;
.source "CertificatePolicyId.java"


# instance fields
.field private id:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lsun/security/x509/CertificatePolicyId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    check-cast p1, Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {p1}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CertificatePolicyId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

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
