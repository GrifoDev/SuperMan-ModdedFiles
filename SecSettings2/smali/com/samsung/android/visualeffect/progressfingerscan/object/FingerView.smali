.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;
.super Landroid/view/View;
.source "FingerView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentPercent:F

.field private greyColor:I

.field private height:I

.field private maxOvalHeight:F

.field private maxOvalWidth:F

.field private maxXRatio:F

.field private maxYRatio:F

.field private paint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    const v1, 0x3eeca37f

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxXRatio:F

    const v1, 0x3f49c5fd

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxYRatio:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    :goto_0
    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->greyColor:I

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    int-to-float v1, p3

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxYRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalHeight:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalHeight:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalWidth:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41700000    # 15.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->greyColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    int-to-float v0, v0

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalWidth:F

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    div-float v1, v0, v7

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    int-to-float v0, v0

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalHeight:F

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    div-float v2, v0, v7

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    int-to-float v0, v0

    sub-float v3, v0, v1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    int-to-float v0, v0

    sub-float v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->invalidate(IIII)V

    return-void
.end method

.method public setPercent(F)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->invalidate(IIII)V

    return-void
.end method
