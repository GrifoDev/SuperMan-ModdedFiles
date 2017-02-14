.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final curve:Ljava/security/spec/EllipticCurve;

.field private curveName:Ljava/lang/String;

.field private final g:Ljava/security/spec/ECPoint;

.field private final h:I

.field private final n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "curve is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "g is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "n is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gtz p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "h is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->g:Ljava/security/spec/ECPoint;

    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    iput p4, p0, Ljava/security/spec/ECParameterSpec;->h:I

    return-void
.end method


# virtual methods
.method public getCofactor()I
    .locals 1

    iget v0, p0, Ljava/security/spec/ECParameterSpec;->h:I

    return v0
.end method

.method public getCurve()Ljava/security/spec/EllipticCurve;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    return-object v0
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerator()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->g:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setCurveName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    return-void
.end method
