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
    .param p1, "partyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 73
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "assignerName"    # Ljava/lang/String;
    .param p2, "partyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 63
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 8
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 52
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 54
    const/4 v5, -0x1

    iput v5, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 83
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 84
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    .line 86
    .local v4, "seq":[Lsun/security/util/DerValue;
    array-length v2, v4

    .line 87
    .local v2, "len":I
    if-lt v2, v6, :cond_0

    if-le v2, v7, :cond_1

    .line 88
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid encoding of EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_8

    .line 91
    aget-object v3, v4, v0

    .line 92
    .local v3, "opt":Lsun/security/util/DerValue;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {v3, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_4
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 95
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Duplicate nameAssigner found in EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_5
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    goto :goto_1

    .line 102
    :cond_6
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 103
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Duplicate partyName found in EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_7
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    goto :goto_2

    .line 82
    .end local v3    # "opt":Lsun/security/util/DerValue;
    :cond_8
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    const/4 v0, -0x1

    .line 242
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 237
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 238
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 240
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and matching of names not supported for EDIPartyName"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x80

    const/4 v4, 0x0

    .line 125
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 126
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 128
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 129
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 131
    .local v2, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 132
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 135
    .end local v2    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 136
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Cannot have null partyName"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_1
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x1

    .line 140
    invoke-static {v5, v4, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 143
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 124
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 172
    instance-of v2, p1, Lsun/security/x509/EDIPartyName;

    if-nez v2, :cond_0

    .line 173
    return v3

    :cond_0
    move-object v2, p1

    .line 174
    nop

    nop

    iget-object v0, v2, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 175
    .local v0, "otherAssigner":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 176
    if-eqz v0, :cond_2

    .line 177
    return v3

    .line 179
    :cond_1
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    return v3

    .line 182
    :cond_2
    nop

    nop

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 183
    .local v1, "otherParty":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 184
    if-eqz v1, :cond_4

    .line 185
    return v3

    .line 187
    :cond_3
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 188
    return v3

    .line 190
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public getAssignerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 201
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 205
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

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth() not supported for EDIPartyName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EDIPartyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 212
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "  partyName = "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
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
