.class public Lsun/security/x509/CertificatePolicyId;
.super Ljava/lang/Object;
.source "CertificatePolicyId.java"


# instance fields
.field private id:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    .line 55
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 0
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    .line 46
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 83
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 95
    instance-of v0, p1, Lsun/security/x509/CertificatePolicyId;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    check-cast p1, Lsun/security/x509/CertificatePolicyId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0

    .line 98
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CertificatePolicyId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lsun/security/x509/CertificatePolicyId;->id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "]\n"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
