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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    const/4 v2, -0x1

    iput v2, p0, Lsun/security/x509/OtherName;->myhash:I

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iget-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v3, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v2, v3}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    :goto_0
    return-void

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, p1, p2}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    :goto_0
    return-void

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v6

    :cond_0
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

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

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and matching are not supported for OtherName."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v1, p1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    return-void

    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    const/16 v1, -0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(B[B)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    if-ne p0, p1, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    instance-of v5, p1, Lsun/security/x509/OtherName;

    if-nez v5, :cond_1

    return v7

    :cond_1
    move-object v3, p1

    nop

    nop

    iget-object v5, v3, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v6, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    iget-object v5, v3, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v6, v3, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v5, v6}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2, p0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    :goto_0
    return v4

    :catch_0
    move-exception v0

    return v7

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iget-object v6, v3, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    goto :goto_0
.end method

.method public getNameValue()[B
    .locals 1

    iget-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/x509/OtherName;->nameValue:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    return v1
.end method

.method public subtreeDepth()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth() not supported for generic OtherName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
