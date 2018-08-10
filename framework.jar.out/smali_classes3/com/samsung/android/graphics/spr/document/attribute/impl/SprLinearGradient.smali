.class public Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;
.super Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;
.source "SprLinearGradient.java"


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x1:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y1:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x2:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y2:F

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x1:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y1:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x2:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y2:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public updateGradient()V
    .locals 9

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x1:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y1:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x2:F

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y2:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->colors:[I

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->positions:[F

    sget-object v7, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->sTileModeArray:[Landroid/graphics/Shader$TileMode;

    iget-byte v8, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->spreadMode:B

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->shader:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
