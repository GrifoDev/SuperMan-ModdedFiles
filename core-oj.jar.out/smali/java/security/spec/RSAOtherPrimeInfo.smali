.class public Ljava/security/spec/RSAOtherPrimeInfo;
.super Ljava/lang/Object;
.source "RSAOtherPrimeInfo.java"


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private prime:Ljava/math/BigInteger;

.field private primeExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeExponent"    # Ljava/math/BigInteger;
    .param p3, "crtCoefficient"    # Ljava/math/BigInteger;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the prime parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the primeExponent parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    if-nez p3, :cond_2

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the crtCoefficient parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    iput-object p1, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    .line 90
    iput-object p2, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    .line 91
    iput-object p3, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    .line 76
    return-void
.end method


# virtual methods
.method public final getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPrime()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    return-object v0
.end method
