.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeEllipse.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

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

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 6

    const/16 v2, 0x1f

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->save(I)I

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->alpha:F

    mul-float v0, p5, v2

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    iget v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->setShadowLayer()V

    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->isVisibleFill:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->isVisibleStroke:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->clearShadowLayer()V

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

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

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

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
