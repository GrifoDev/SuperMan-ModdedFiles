.class public Ljavax/crypto/spec/DHPrivateKeySpec;
.super Ljava/lang/Object;
.source "DHPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->x:Ljava/math/BigInteger;

    .line 63
    iput-object p2, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->p:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->g:Ljava/math/BigInteger;

    .line 61
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
