.class public Ljava/security/spec/ECFieldF2m;
.super Ljava/lang/Object;
.source "ECFieldF2m.java"

# interfaces
.implements Ljava/security/spec/ECField;


# instance fields
.field private ks:[I

.field private m:I

.field private rp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "m is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-gtz p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "m is not positive"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "rp does not represent a valid reduction polynomial"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v4, v0, -0x2

    new-array v4, v4, [I

    iput-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aput v2, v4, v1

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    if-gtz p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "m is not positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "length of ks is neither 1 nor 3"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v2, v0

    if-lt v2, v5, :cond_2

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v2, v0

    add-int/lit8 v3, p1, -0x1

    if-le v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ks["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-lt v2, v3, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "values in ks are not in descending order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECFieldF2m;

    if-eqz v0, :cond_2

    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECFieldF2m;

    iget v0, v0, Ljava/security/spec/ECFieldF2m;->m:I

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    check-cast p1, Ljava/security/spec/ECFieldF2m;

    iget-object v1, p1, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getMidTermsOfReductionPolynomial()[I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getReductionPolynomial()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    shl-int/lit8 v0, v1, 0x5

    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    goto :goto_0
.end method
