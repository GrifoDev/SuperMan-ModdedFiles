.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;

.field private final field:Ljava/security/spec/ECField;

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "seed"    # [B

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "first coefficient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "second coefficient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    const-string/jumbo v0, "first coefficient"

    invoke-static {p1, p2, v0}, Ljava/security/spec/EllipticCurve;->checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "second coefficient"

    invoke-static {p1, p3, v0}, Ljava/security/spec/EllipticCurve;->checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    .line 115
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    .line 116
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    .line 117
    if-eqz p4, :cond_3

    .line 118
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    .line 102
    :goto_0
    return-void

    .line 120
    :cond_3
    iput-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    goto :goto_0
.end method

.method private static checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 5
    .param p0, "field"    # Ljava/security/spec/ECField;
    .param p1, "c"    # Ljava/math/BigInteger;
    .param p2, "cName"    # Ljava/lang/String;

    .prologue
    .line 54
    instance-of v2, p0, Ljava/security/spec/ECFieldFp;

    if-eqz v2, :cond_1

    .line 55
    check-cast p0, Ljava/security/spec/ECFieldFp;

    .end local p0    # "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 56
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is too large"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_2

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is negative"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v1    # "p":Ljava/math/BigInteger;
    .restart local p0    # "field":Ljava/security/spec/ECField;
    :cond_1
    instance-of v2, p0, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_2

    .line 62
    check-cast p0, Ljava/security/spec/ECFieldF2m;

    .end local p0    # "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v0

    .line 63
    .local v0, "m":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is too large"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v0    # "m":I
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 171
    if-ne p0, p1, :cond_0

    return v3

    .line 172
    :cond_0
    instance-of v1, p1, Ljava/security/spec/EllipticCurve;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 173
    check-cast v0, Ljava/security/spec/EllipticCurve;

    .line 174
    .local v0, "curve":Ljava/security/spec/EllipticCurve;
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 174
    if-eqz v1, :cond_1

    .line 177
    return v3

    .line 180
    .end local v0    # "curve":Ljava/security/spec/EllipticCurve;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getField()Ljava/security/spec/ECField;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    return-object v0
.end method

.method public getSeed()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-nez v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 193
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    .line 192
    add-int/lit8 v1, v1, 0x6

    .line 194
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    .line 192
    add-int/2addr v1, v2

    shl-int/2addr v0, v1

    return v0
.end method
