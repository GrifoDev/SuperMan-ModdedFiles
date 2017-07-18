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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/DSAPublicKeySpec;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Ljava/security/spec/DSAPublicKeySpec;->p:Ljava/math/BigInteger;

    iput-object p3, p0, Ljava/security/spec/DSAPublicKeySpec;->q:Ljava/math/BigInteger;

    iput-object p4, p0, Ljava/security/spec/DSAPublicKeySpec;->g:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
