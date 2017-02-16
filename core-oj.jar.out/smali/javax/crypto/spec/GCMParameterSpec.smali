.class public Ljavax/crypto/spec/GCMParameterSpec;
.super Ljava/lang/Object;
.source "GCMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private tLen:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "tLen"    # I
    .param p2, "src"    # [B

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p2, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Ljavax/crypto/spec/GCMParameterSpec;->init(I[BII)V

    .line 83
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "tLen"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/GCMParameterSpec;->init(I[BII)V

    .line 107
    return-void
.end method

.method private init(I[BII)V
    .locals 3
    .param p1, "tLen"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    if-gez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    const-string/jumbo v1, "Length argument is negative"

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tLen:I

    .line 122
    if-eqz p2, :cond_1

    if-gez p4, :cond_2

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid buffer arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    if-ltz p3, :cond_1

    .line 123
    add-int v0, p4, p3

    array-length v1, p2

    if-gt v0, v1, :cond_1

    .line 127
    new-array v0, p4, [B

    iput-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    .line 128
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    invoke-static {p2, p3, v0, v2, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 114
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTLen()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->tLen:I

    return v0
.end method
