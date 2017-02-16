.class public Lsun/security/x509/RFC822Name;
.super Ljava/lang/Object;
.source "RFC822Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lsun/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 9
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x40

    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v0, -0x1

    .line 228
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 187
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 188
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 192
    .end local v0    # "constraintType":I
    :cond_1
    check-cast p1, Lsun/security/x509/RFC822Name;

    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "inName":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "thisName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 196
    .end local v0    # "constraintType":I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 198
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 199
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 200
    .end local v0    # "constraintType":I
    :cond_3
    const-string/jumbo v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 203
    .end local v0    # "constraintType":I
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "inNdx":I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_5

    .line 205
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 207
    .end local v0    # "constraintType":I
    :cond_5
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 210
    .end local v0    # "constraintType":I
    .end local v2    # "inNdx":I
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 212
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_7

    .line 213
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 214
    .end local v0    # "constraintType":I
    :cond_7
    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 215
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 217
    .end local v0    # "constraintType":I
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 218
    .local v3, "ndx":I
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_9

    .line 219
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 221
    .end local v0    # "constraintType":I
    :cond_9
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 225
    .end local v0    # "constraintType":I
    .end local v3    # "ndx":I
    :cond_a
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 137
    if-ne p0, p1, :cond_0

    .line 138
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_0
    instance-of v1, p1, Lsun/security/x509/RFC822Name;

    if-nez v1, :cond_1

    .line 141
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 143
    nop

    nop

    .line 147
    .local v0, "other":Lsun/security/x509/RFC822Name;
    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    iget-object v2, v0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parseName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "RFC822Name may not be null or empty"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 88
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "RFC822Name may not end with @"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_2
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 94
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "RFC822Name domain may not be just ."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_3
    return-void
.end method

.method public subtreeDepth()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x0

    .line 239
    iget-object v2, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    .line 240
    .local v2, "subtree":Ljava/lang/String;
    const/4 v1, 0x1

    .line 243
    .local v1, "i":I
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 244
    .local v0, "atNdx":I
    if-ltz v0, :cond_0

    .line 245
    const/4 v1, 0x2

    .line 246
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 251
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RFC822Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
