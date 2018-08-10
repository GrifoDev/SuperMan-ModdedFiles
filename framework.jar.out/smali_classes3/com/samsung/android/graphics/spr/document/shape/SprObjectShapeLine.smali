.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeLine.java"


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x1:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x2:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y1:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y2:F

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

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x1:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x2:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y1:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y2:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 7

    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->alpha:F

    mul-float v6, p5, v0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->setShadowLayer()V

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->isVisibleStroke:Z

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x1:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y1:F

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x2:F

    iget v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y2:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->clearShadowLayer()V

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

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x1:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y1:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x2:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y2:F

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

    const/4 v0, 0x2

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x1:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y1:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->x2:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;->y2:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
