.class public Lcom/samsung/android/animation/SemSweepWaveFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepWaveFilter.java"


# static fields
.field private static final SWIPE_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SemSweepWaveFilter"

.field private static final WAVE_ANIMATION_DURATION:I = 0x514

.field private static final WAVE_BG_ALPHA:I = 0xe1

.field private static sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final DEBUGGABLE:Z

.field private final WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private incrementYdown:F

.field private incrementYup:F

.field private final leftColor:I

.field private mBaseWaveColor:Landroid/graphics/Paint;

.field private mBgLeftGreen:Landroid/graphics/Paint;

.field private mBgMiddleBlue:Landroid/graphics/Paint;

.field private mBgRightYellow:Landroid/graphics/Paint;

.field private mDeltaX:F

.field private mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEndXOfActionUpAnimator:F

.field private mGradientWidth:F

.field private mIsActionMove:Z

.field private mListView:Landroid/widget/ListView;

.field private mMiddleBlueRect:Landroid/graphics/RectF;

.field private mPathDown:Landroid/graphics/Path;

.field private mPathUp:Landroid/graphics/Path;

.field private mPosition:I

.field private mSweepBitmap:Landroid/graphics/Bitmap;

.field private mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private mSweepProgress:F

.field private mSweepRect:Landroid/graphics/Rect;

.field private mViewForeground:Landroid/view/View;

.field private final middleColor:I

.field private final rightColor:I

.field private waveBaseColor:I

.field private waveControlPointHeight:F

.field private waveHeight:F

.field private waveValueAnimator:Landroid/animation/ValueAnimator;

.field private waveWidth:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/animation/SemSweepWaveFilter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/animation/SemSweepWaveFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/animation/SemSweepWaveFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/animation/SemSweepWaveFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/animation/SemSweepWaveFilter;Landroid/view/View;FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->doDrawWaveEffect(Landroid/view/View;FI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/widget/ListView;)V
    .locals 7

    const/16 v6, 0xff

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    iput-boolean v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->DEBUGGABLE:Z

    const/16 v0, 0x61

    const/16 v1, 0xaa

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    const/16 v0, 0xc

    const/16 v1, 0x5c

    const/16 v2, 0x7e

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    const/16 v0, 0xe8

    const/16 v1, 0x9c

    invoke-static {v0, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYup:F

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    iput-boolean v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPosition:I

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->leftColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->middleColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->rightColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method private cancelRunningAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private doDrawWaveEffect(Landroid/view/View;FI)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, p2, v2

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p3, v1, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 11

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget v9, p2, Landroid/graphics/Rect;->top:I

    neg-int v0, v9

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBaseWaveColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    int-to-float v0, v8

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    add-float/2addr v0, v1

    mul-float v10, v0, p3

    cmpl-float v0, v10, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    sub-float v7, v10, v0

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    div-float/2addr v0, v5

    add-float v3, v7, v0

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    cmpg-float v0, v10, v2

    if-gez v0, :cond_1

    int-to-float v0, v8

    add-float v7, v0, v10

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mGradientWidth:F

    div-float/2addr v0, v5

    add-float v3, v7, v0

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgRightYellow:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mMiddleBlueRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 13

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v4, p3, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->incrementYdown:F

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float v12, v1, v2

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    int-to-float v10, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v3, v12

    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v5, v12

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v7, v12, v6

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v5, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v7, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v8, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v12

    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v12

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    add-float v7, v12, v6

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v5, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v7, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v8, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v3, v12

    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v5, v12

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float v7, v12, v6

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v5, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v7, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v8, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v12

    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    add-float/2addr v5, v12

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    add-float v7, v12, v6

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    add-float v5, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v6, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    sub-float v7, v1, v2

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    add-float v8, v4, v1

    iget v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float v9, v12, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v12

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p6

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p6

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    instance-of v7, v1, Landroid/widget/ListView;

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    :cond_0
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v5, v3

    invoke-direct {v7, v4, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, v2, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWave(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    add-int v5, v7, v8

    goto :goto_0
.end method

.method private getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method

.method private initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
    .locals 7

    const/4 v6, 0x1

    move v2, p2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveHeight:F

    div-int/lit8 v3, v1, 0xd

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveWidth:F

    div-int/lit8 v3, v1, 0x4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveControlPointHeight:F

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/animation/SemSweepWaveFilter$1;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter$1;-><init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x514

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private removeCachedBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, p4, v8

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v8, v7

    cmpl-float v8, p4, v8

    if-lez v8, :cond_0

    int-to-float p4, v7

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-int/lit8 v9, p3, 0x6

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    if-eqz p5, :cond_1

    const-wide/16 v2, 0x258

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    :goto_0
    iput v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    move v5, v6

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/samsung/android/animation/SemSweepWaveFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_1
    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpl-float v8, v1, v8

    if-lez v8, :cond_2

    const-wide/16 v2, 0x258

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    const/high16 v9, 0x44160000    # 600.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-long v2, v8

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public doMoveAction(Landroid/view/View;FI)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, p2, v1

    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDeltaX:F

    iput v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepProgress:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    return-void
.end method

.method public doRefresh()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mIsActionMove:Z

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->removeCachedBitmap()V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->cancelRunningAnimator()V

    return-void
.end method

.method public doUpActionWhenAnimationUpdate(IF)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->drawWaveToBitmapCanvas(Landroid/view/View;F)Landroid/graphics/Canvas;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v1, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepWaveFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndXOfActionUpAnimator()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V

    return-void
.end method

.method public bridge synthetic isAnimationBack()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public setForegroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter;->mViewForeground:Landroid/view/View;

    return-void
.end method
