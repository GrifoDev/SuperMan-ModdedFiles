.class public Lsun/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/security/cert/Extension;


# static fields
.field private static final hashMagic:I = 0x1f


# instance fields
.field protected critical:Z

.field protected extensionId:Lsun/security/util/ObjectIdentifier;

.field protected extensionValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Z[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-boolean p2, p0, Lsun/security/x509/Extension;->critical:Z

    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void
.end method

.method public constructor <init>(Lsun/security/x509/Extension;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    iget-object v0, p1, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iget-boolean v0, p1, Lsun/security/x509/Extension;->critical:Z

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    iget-object v0, p1, Lsun/security/x509/Extension;->extensionValue:[B

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void
.end method

.method public static newExtension(Lsun/security/util/ObjectIdentifier;Z[B)Lsun/security/x509/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/x509/Extension;

    invoke-direct {v0}, Lsun/security/x509/Extension;-><init>()V

    iput-object p0, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-boolean p1, v0, Lsun/security/x509/Extension;->critical:Z

    iput-object p2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    :cond_1
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Null OID to encode for the extension!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No value to encode for the extension!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    :cond_2
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v1, p1, Lsun/security/x509/Extension;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/security/x509/Extension;

    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    iget-boolean v2, v0, Lsun/security/x509/Extension;->critical:Z

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iget-object v2, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    iget-object v2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getExtensionId()Lsun/security/util/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getExtensionValue()[B
    .locals 1

    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-eqz v4, :cond_0

    iget-object v3, p0, Lsun/security/x509/Extension;->extensionValue:[B

    array-length v1, v3

    move v2, v1

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget-byte v4, v3, v1

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    move v2, v1

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v5, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v5

    add-int v0, v4, v5

    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    :goto_1
    add-int v0, v5, v4

    return v0

    :cond_1
    const/16 v4, 0x4d5

    goto :goto_1
.end method

.method public isCritical()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Criticality=true\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Criticality=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
