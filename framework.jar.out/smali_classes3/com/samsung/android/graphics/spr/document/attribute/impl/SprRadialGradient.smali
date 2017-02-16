.class public Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;
.super Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
.source "SprRadialGradient.java"


# instance fields
.field public cx:F

.field public cy:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 17
    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cx:F

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cy:F

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->r:F

    .line 28
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 23
    return-void
.end method

.method public getSPRSize()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 34
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 35
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 32
    return-void
.end method

.method public updateGradient()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    array-length v9, v0

    .line 49
    .local v9, "size":I
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    add-int/lit8 v1, v9, -0x1

    aget v0, v0, v1

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    .line 50
    add-int/lit8 v9, v9, 0x1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 53
    add-int/lit8 v9, v9, 0x1

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    .line 56
    .local v4, "lcolors":[I
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    .line 58
    .local v5, "lpositions":[F
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    array-length v0, v0

    if-eq v9, v0, :cond_4

    .line 59
    new-array v4, v9, [I

    .line 60
    new-array v5, v9, [F

    .line 61
    const/4 v8, 0x0

    .line 62
    .local v8, "index":I
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v0, v0, v2

    aput v0, v4, v2

    .line 64
    aput v3, v5, v2

    .line 65
    const/4 v8, 0x1

    .line 68
    :cond_2
    const/4 v7, 0x0

    .local v7, "cnt":I
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    aget v0, v0, v7

    aput v0, v4, v8

    .line 70
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    aget v0, v0, v7

    aput v0, v5, v8

    .line 68
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4

    .line 74
    add-int/lit8 v0, v9, -0x1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->colors:[I

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->positions:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    aput v1, v4, v0

    .line 75
    add-int/lit8 v0, v9, -0x1

    aput v6, v5, v0

    .line 79
    .end local v7    # "cnt":I
    .end local v8    # "index":I
    :cond_4
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cx:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->cy:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->r:F

    sget-object v6, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;->sTileModeArray:[Landroid/graphics/Shader$TileMode;

    iget-byte v10, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->spreadMode:B

    aget-object v6, v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 47
    :cond_5
    return-void
.end method
