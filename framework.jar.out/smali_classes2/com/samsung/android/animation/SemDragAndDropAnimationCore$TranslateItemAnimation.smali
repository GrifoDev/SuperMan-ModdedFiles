.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
.super Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslateItemAnimation"
.end annotation


# instance fields
.field private mDeltaX:I

.field private mDeltaY:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mOffsetXDest:I

.field private mOffsetYDest:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;-><init>()V

    .line 112
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    return-void
.end method


# virtual methods
.method getCurrentTranslateX()F
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 154
    .local v0, "interpolatedProgress":F
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method getCurrentTranslateY()F
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 159
    .local v0, "interpolatedProgress":F
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method getDestOffsetX()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method getDestOffsetY()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method getTransformation(Landroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "outTransform"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 124
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 125
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 126
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 128
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mProgress:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 129
    .local v0, "interpolatedProgress":F
    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    int-to-float v5, v5

    sub-float v6, v7, v0

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 130
    .local v2, "translateX":F
    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    int-to-float v5, v5

    sub-float v6, v7, v0

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 131
    .local v3, "translateY":F
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 123
    return-void
.end method

.method setStartAndDuration(F)V
    .locals 2
    .param p1, "durationMultiplicator"    # F

    .prologue
    .line 171
    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 172
    .local v0, "duration":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    .line 170
    return-void
.end method

.method setStartAndDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mStartTime:J

    .line 164
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    .line 166
    if-nez p1, :cond_0

    .line 167
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->mDuration:I

    .line 162
    :cond_0
    return-void
.end method

.method translate(IIII)V
    .locals 0
    .param p1, "offsetDestX"    # I
    .param p2, "deltaX"    # I
    .param p3, "offsetDestY"    # I
    .param p4, "deltaY"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetXDest:I

    .line 117
    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaX:I

    .line 119
    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mOffsetYDest:I

    .line 120
    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->mDeltaY:I

    .line 115
    return-void
.end method
