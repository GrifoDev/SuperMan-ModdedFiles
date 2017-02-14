.class public Lsun/security/x509/GeneralSubtree;
.super Ljava/lang/Object;
.source "GeneralSubtree.java"


# static fields
.field private static final MIN_DEFAULT:I = 0x0

.field private static final TAG_MAX:B = 0x1t

.field private static final TAG_MIN:B


# instance fields
.field private maximum:I

.field private minimum:I

.field private myhash:I

.field private name:Lsun/security/x509/GeneralName;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding for GeneralSubtree."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lsun/security/x509/GeneralName;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    iput-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    :goto_0
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of GeneralSubtree."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralName;II)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    iput-object p1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    iput p2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    iput p3, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, -0x80

    const/4 v4, 0x0

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    if-eqz v2, :cond_0

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_0
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    const/4 v2, 0x1

    invoke-static {v5, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Lsun/security/x509/GeneralSubtree;

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-nez v1, :cond_1

    iget-object v1, v0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-eqz v1, :cond_2

    return v3

    :cond_1
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    iget-object v2, v0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v2}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    iget v2, v0, Lsun/security/x509/GeneralSubtree;->minimum:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    iget v2, v0, Lsun/security/x509/GeneralSubtree;->maximum:I

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public getMaximum()I
    .locals 1

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    return v0
.end method

.method public getName()Lsun/security/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0x11

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-eqz v0, :cond_0

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    :cond_0
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    if-eqz v0, :cond_1

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    :cond_1
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    :cond_2
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   GeneralSubtree: [\n    GeneralName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n    Minimum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/GeneralSubtree;->minimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t    Maximum: undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->name:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t    Maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/GeneralSubtree;->maximum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
