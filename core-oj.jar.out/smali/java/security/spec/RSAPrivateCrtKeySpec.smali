.class public Ljava/security/spec/RSAPrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAPrivateCrtKeySpec.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final primeExponentP:Ljava/math/BigInteger;

.field private final primeExponentQ:Ljava/math/BigInteger;

.field private final primeP:Ljava/math/BigInteger;

.field private final primeQ:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;

    .prologue
    .line 81
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 82
    iput-object p2, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 83
    iput-object p4, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    .line 84
    iput-object p5, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    .line 85
    iput-object p6, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    .line 86
    iput-object p7, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    .line 87
    iput-object p8, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    .line 80
    return-void
.end method


# virtual methods
.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/spec/RSAPrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
