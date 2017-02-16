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
    .param p1, "m"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gtz p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "m is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 58
    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 59
    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "rp"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 87
    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 88
    if-gtz p1, :cond_0

    .line 89
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "m is not positive"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_0
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    .line 92
    .local v0, "bitCount":I
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    .line 94
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 95
    const-string/jumbo v5, "rp does not represent a valid reduction polynomial"

    .line 94
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_2
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 99
    .local v3, "temp":Ljava/math/BigInteger;
    add-int/lit8 v4, v0, -0x2

    new-array v4, v4, [I

    iput-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 100
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 101
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    .line 102
    .local v2, "index":I
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aput v2, v4, v1

    .line 103
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 100
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 84
    .end local v2    # "index":I
    :cond_3
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 137
    if-gtz p1, :cond_0

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "m is not positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 142
    const-string/jumbo v3, "length of ks is neither 1 nor 3"

    .line 141
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 145
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v2, v0

    if-lt v2, v5, :cond_2

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v2, v0

    add-int/lit8 v3, p1, -0x1

    if-le v2, v3, :cond_3

    .line 146
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 147
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

    .line 146
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-lt v2, v3, :cond_4

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 151
    const-string/jumbo v3, "values in ks are not in descending order"

    .line 150
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_5
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 156
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 157
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 158
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 219
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECFieldF2m;

    if-eqz v0, :cond_2

    .line 223
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECFieldF2m;

    iget v0, v0, Ljava/security/spec/ECFieldF2m;->m:I

    if-ne v2, v0, :cond_1

    .line 224
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    check-cast p1, Ljava/security/spec/ECFieldF2m;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    move v0, v1

    goto :goto_0

    .line 226
    :cond_2
    return v1
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getMidTermsOfReductionPolynomial()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    if-nez v0, :cond_0

    .line 204
    return-object v1

    .line 206
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getReductionPolynomial()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 235
    iget v1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    shl-int/lit8 v0, v1, 0x5

    .line 236
    .local v0, "value":I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 239
    return v0

    .line 236
    :cond_0
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    goto :goto_0
.end method
