.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "iv"    # [B

    .prologue
    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 52
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "iv"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IV missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    const-string/jumbo v1, "IV buffer too short for given offset/length combination"

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    if-gez p3, :cond_2

    .line 84
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    .line 87
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
