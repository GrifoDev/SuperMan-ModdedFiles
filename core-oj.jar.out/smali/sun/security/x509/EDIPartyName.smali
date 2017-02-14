.class public Lsun/security/x509/EDIPartyName;
.super Ljava/lang/Object;
.source "EDIPartyName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final TAG_ASSIGNER:B = 0x0t

.field private static final TAG_PARTYNAME:B = 0x1t


# instance fields
.field private assigner:Ljava/lang/String;

.field private myhash:I

.field private party:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    const/4 v5, -0x1

    iput v5, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    array-length v2, v4

    if-lt v2, v6, :cond_0

    if-le v2, v7, :cond_1

    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid encoding of EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_8

    aget-object v3, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {v3, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Duplicate nameAssigner found in EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-eqz v5, :cond_7

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Duplicate partyName found in EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    goto :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and matching of names not supported for EDIPartyName"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

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

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :cond_0
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Cannot have null partyName"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v5, v4, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    const/16 v3, 0x30

    invoke-virtual {p1, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v2, p1, Lsun/security/x509/EDIPartyName;

    if-nez v2, :cond_0

    return v3

    :cond_0
    move-object v2, p1

    nop

    nop

    iget-object v0, v2, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    return v3

    :cond_1
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    nop

    nop

    iget-object v1, p1, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    return v3

    :cond_3
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public getAssignerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    :cond_0
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    return v0
.end method

.method public subtreeDepth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth() not supported for EDIPartyName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EDIPartyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  partyName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  nameAssigner = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
