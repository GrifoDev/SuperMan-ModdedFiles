.class public Lsun/security/x509/X400Address;
.super Ljava/lang/Object;
.source "X400Address.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field nameValue:[B


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 356
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 355
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 346
    iput-object p1, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 345
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
    .line 401
    if-nez p1, :cond_0

    .line 402
    const/4 v0, -0x1

    .line 408
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 403
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 404
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 407
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and match are not supported for X400Address."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/X400Address;->nameValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 374
    .local v0, "derValue":Lsun/security/util/DerValue;
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 372
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x3

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
    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth not supported for X400Address"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const-string/jumbo v0, "X400Address: <DER-encoded value>"

    return-object v0
.end method
