.class public Ljava/security/spec/RSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "RSAPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private modulus:Ljava/math/BigInteger;

.field private privateExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "privateExponent"    # Ljava/math/BigInteger;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/security/spec/RSAPrivateKeySpec;->modulus:Ljava/math/BigInteger;

    .line 57
    iput-object p2, p0, Ljava/security/spec/RSAPrivateKeySpec;->privateExponent:Ljava/math/BigInteger;

    .line 55
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method
