.class public Lcom/samsung/android/media/virtualtour/CRect;
.super Ljava/lang/Object;
.source "CRect.java"


# instance fields
.field public height:F

.field public topLeftx:F

.field public topLefty:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/media/virtualtour/CRect;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iput p2, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    iput p3, p0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    iput p4, p0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    return-void
.end method


# virtual methods
.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    return v0
.end method

.method public getRight()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public hasPoint(Lcom/samsung/android/media/virtualtour/CPoint2D;)Z
    .locals 3

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->x:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/media/virtualtour/CPoint2D;->y:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
