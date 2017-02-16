.class public Ljavax/crypto/spec/DHParameterSpec;
.super Ljava/lang/Object;
.source "DHParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private l:I

.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 75
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "l"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 91
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 92
    iput p3, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 89
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method
