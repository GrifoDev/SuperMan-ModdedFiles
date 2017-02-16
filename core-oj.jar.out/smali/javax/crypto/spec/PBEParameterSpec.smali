.class public Ljavax/crypto/spec/PBEParameterSpec;
.super Ljava/lang/Object;
.source "PBEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iterationCount:I

.field private salt:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    .line 57
    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    .line 55
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
