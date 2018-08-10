.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeCircle.java"


# instance fields
.field public cr:F

.field public cx:F

.field public cy:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 5

    const/16 v1, 0x1f

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->alpha:F

    mul-float v0, p5, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->setShadowLayer()V

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->isVisibleFill:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
