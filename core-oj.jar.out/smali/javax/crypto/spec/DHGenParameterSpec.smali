.class public Ljavax/crypto/spec/DHGenParameterSpec;
.super Ljava/lang/Object;
.source "DHGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private exponentSize:I

.field private primeSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "primeSize"    # I
    .param p2, "exponentSize"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    .line 65
    iput p2, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    .line 63
    return-void
.end method


# virtual methods
.method public getExponentSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    return v0
.end method

.method public getPrimeSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    return v0
.end method
