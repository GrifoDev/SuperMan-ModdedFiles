.class public Ljava/security/spec/DSAPublicKeySpec;
.super Ljava/lang/Object;
.source "DSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/security/spec/DSAPublicKeySpec;->y:Ljava/math/BigInteger;

    .line 66
    iput-object p2, p0, Ljava/security/spec/DSAPublicKeySpec;->p:Ljava/math/BigInteger;

    .line 67
    iput-object p3, p0, Ljava/security/spec/DSAPublicKeySpec;->q:Ljava/math/BigInteger;

    .line 68
    iput-object p4, p0, Ljava/security/spec/DSAPublicKeySpec;->g:Ljava/math/BigInteger;

    .line 64
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
