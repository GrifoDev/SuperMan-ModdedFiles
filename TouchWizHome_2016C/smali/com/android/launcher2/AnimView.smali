.class public Lcom/android/launcher2/AnimView;
.super Landroid/view/View;
.source "AnimView.java"


# static fields
.field public static COLOR_CHANGE_DURATION:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeProgress:F

.field private mCurrentFilter:[F

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x78

    sput v0, Lcom/android/launcher2/AnimView;->COLOR_CHANGE_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/AnimView;->mCrossFadeProgress:F

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/AnimView;->measure(II)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/AnimView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher2/AnimView;->mCrossFadeProgress:F

    return p1
.end method


# virtual methods
.method public crossFade(I)V
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher2/AnimView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AnimView$1;-><init>(Lcom/android/launcher2/AnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isCrossFadeMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/launcher2/AnimView;->mCrossFadeProgress:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget v5, p0, Lcom/android/launcher2/AnimView;->mCrossFadeProgress:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v9

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/AnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher2/AnimView;->mCrossFadeProgress:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/AnimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AnimView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AnimView;->mCrossFadeProgress:F

    iput-object v1, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
