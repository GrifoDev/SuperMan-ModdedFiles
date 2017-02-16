.class public Lsun/security/x509/CertificatePolicySet;
.super Ljava/lang/Object;
.source "CertificatePolicySet.java"


# instance fields
.field private final ids:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lsun/security/x509/CertificatePolicyId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lsun/security/x509/CertificatePolicyId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "ids":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/x509/CertificatePolicyId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    .line 50
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    .line 62
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 64
    .local v2, "seq":[Lsun/security/util/DerValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 65
    new-instance v1, Lsun/security/x509/CertificatePolicyId;

    aget-object v3, v2, v0

    invoke-direct {v1, v3}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/DerValue;)V

    .line 66
    .local v1, "id":Lsun/security/x509/CertificatePolicyId;
    iget-object v3, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "id":Lsun/security/x509/CertificatePolicyId;
    :cond_0
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 89
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/CertificatePolicyId;

    invoke-virtual {v2, v1}, Lsun/security/x509/CertificatePolicyId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 86
    return-void
.end method

.method public getCertPolicyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CertificatePolicySet:[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lsun/security/x509/CertificatePolicySet;->ids:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    const-string/jumbo v2, "]\n"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
