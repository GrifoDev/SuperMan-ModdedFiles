.class public Lsun/security/x509/DistributionPointName;
.super Ljava/lang/Object;
.source "DistributionPointName.java"


# static fields
.field private static final TAG_FULL_NAME:B = 0x0t

.field private static final TAG_RELATIVE_NAME:B = 0x1t


# instance fields
.field private fullName:Lsun/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private relativeName:Lsun/security/x509/RDN;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun/security/x509/GeneralNames;

    invoke-direct {v0, p1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v0, Lsun/security/x509/RDN;

    invoke-direct {v0, p1}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid encoding for DistributionPointName"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fullName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    iput-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "relativeName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, -0x80

    const/4 v2, 0x1

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    const/4 v1, 0x0

    invoke-static {v3, v2, v1}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-static {v3, v2, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lsun/security/x509/DistributionPointName;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    nop

    nop

    iget-object v2, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    iget-object v3, v0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-static {v2, v3}, Lsun/security/x509/DistributionPointName;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    iget-object v2, v0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-static {v1, v2}, Lsun/security/x509/DistributionPointName;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lsun/security/x509/DistributionPointName;->hashCode:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    :goto_0
    iput v0, p0, Lsun/security/x509/DistributionPointName;->hashCode:I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1}, Lsun/security/x509/RDN;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DistributionPointName:\n     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/DistributionPointName;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "DistributionPointName:\n     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/DistributionPointName;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
