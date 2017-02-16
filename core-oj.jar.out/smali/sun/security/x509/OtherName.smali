.class public Lsun/security/x509/OtherName;
.super Ljava/lang/Object;
.source "OtherName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final TAG_VALUE:B


# instance fields
.field private gni:Lsun/security/x509/GeneralNameInterface;

.field private myhash:I

.field private name:Ljava/lang/String;

.field private nameValue:[B

.field private oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 54
    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 58
    const/4 v2, -0x1

    iput v2, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 89
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 91
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 92
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 93
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 94
    iget-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v3, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v2, v3}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 95
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    .line 88
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized ObjectIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;[B)V
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 54
    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 69
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 73
    iput-object p2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 74
    invoke-direct {p0, p1, p2}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 75
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    .line 68
    :goto_0
    return-void

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unrecognized ObjectIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    .locals 9
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "nameValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 123
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v2

    .line 124
    .local v2, "extClass":Ljava/lang/Class;
    if-nez v2, :cond_0

    .line 125
    return-object v6

    .line 127
    :cond_0
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 128
    .local v4, "params":[Ljava/lang/Class;
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 130
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 132
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .local v3, "gni":Lsun/security/x509/GeneralNameInterface;
    return-object v3

    .line 134
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v2    # "extClass":Ljava/lang/Class;
    .end local v3    # "gni":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "params":[Ljava/lang/Class;
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Instantiation error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const/4 v0, -0x1

    .line 254
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 248
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 251
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and matching are not supported for OtherName."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v1, p1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    .line 156
    return-void

    .line 159
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 160
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 161
    const/16 v1, -0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 162
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 152
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 172
    if-ne p0, p1, :cond_0

    .line 173
    const/4 v5, 0x1

    return v5

    .line 175
    :cond_0
    instance-of v5, p1, Lsun/security/x509/OtherName;

    if-nez v5, :cond_1

    .line 176
    return v7

    :cond_1
    move-object v3, p1

    .line 178
    nop

    nop

    .line 179
    .local v3, "otherOther":Lsun/security/x509/OtherName;
    iget-object v5, v3, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v6, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    return v7

    .line 182
    :cond_2
    const/4 v2, 0x0

    .line 184
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_0
    iget-object v5, v3, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v6, v3, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v5, v6}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 190
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    if-eqz v2, :cond_4

    .line 192
    :try_start_1
    invoke-interface {v2, p0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    .line 200
    :goto_0
    return v4

    .line 185
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ioe":Ljava/io/IOException;
    return v7

    .line 192
    .end local v0    # "ioe":Ljava/io/IOException;
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :cond_3
    const/4 v4, 0x0

    .local v4, "result":Z
    goto :goto_0

    .line 193
    .end local v4    # "result":Z
    :catch_1
    move-exception v1

    .line 194
    .local v1, "ioe":Ljava/lang/UnsupportedOperationException;
    const/4 v4, 0x0

    .restart local v4    # "result":Z
    goto :goto_0

    .line 197
    .end local v1    # "ioe":Ljava/lang/UnsupportedOperationException;
    .end local v4    # "result":Z
    :cond_4
    iget-object v5, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iget-object v6, v3, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .local v4, "result":Z
    goto :goto_0
.end method

.method public getNameValue()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 209
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/OtherName;->nameValue:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 212
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    return v1
.end method

.method public subtreeDepth()I
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 266
    const-string/jumbo v1, "subtreeDepth() not supported for generic OtherName"

    .line 265
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Other-Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
