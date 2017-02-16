.class public Ljavax/crypto/spec/RC5ParameterSpec;
.super Ljava/lang/Object;
.source "RC5ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private rounds:I

.field private version:I

.field private wordSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 63
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 64
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 65
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 62
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B

    .prologue
    .line 86
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/crypto/spec/RC5ParameterSpec;-><init>(III[BI)V

    .line 85
    return-void
.end method

.method public constructor <init>(III[BI)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B
    .param p5, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 114
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 115
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 116
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 117
    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "IV missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v0, v1, 0x2

    .line 119
    .local v0, "blockSize":I
    array-length v1, p4

    sub-int/2addr v1, p5

    if-ge v1, v0, :cond_1

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "IV too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    new-array v1, v0, [B

    iput-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 123
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    const/4 v2, 0x0

    invoke-static {p4, p5, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 113
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 175
    if-ne p1, p0, :cond_0

    .line 176
    const/4 v1, 0x1

    return v1

    .line 178
    :cond_0
    instance-of v2, p1, Ljavax/crypto/spec/RC5ParameterSpec;

    if-nez v2, :cond_1

    .line 179
    return v1

    :cond_1
    move-object v0, p1

    .line 181
    nop

    nop

    .line 183
    .local v0, "other":Ljavax/crypto/spec/RC5ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    if-ne v2, v3, :cond_2

    .line 184
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    if-ne v2, v3, :cond_2

    .line 185
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    iget v3, v0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    if-ne v2, v3, :cond_2

    .line 186
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    iget-object v2, v0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 183
    :cond_2
    return v1
.end method

.method public getIV()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getRounds()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    return v0
.end method

.method public getWordSize()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "retval":I
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-eqz v2, :cond_0

    .line 196
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 197
    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    add-int/2addr v2, v3

    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 201
    return v1
.end method
