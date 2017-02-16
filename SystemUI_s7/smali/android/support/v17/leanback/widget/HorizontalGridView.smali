.class public Landroid/support/v17/leanback/widget/HorizontalGridView;
.super Landroid/support/v17/leanback/widget/BaseGridView;
.source "HorizontalGridView.java"


# instance fields
.field private mFadingHighEdge:Z

.field private mFadingLowEdge:Z

.field private mHighFadeShader:Landroid/graphics/LinearGradient;

.field private mHighFadeShaderLength:I

.field private mHighFadeShaderOffset:I

.field private mLowFadeShader:Landroid/graphics/LinearGradient;

.field private mLowFadeShaderLength:I

.field private mLowFadeShaderOffset:I

.field private mTempBitmapHigh:Landroid/graphics/Bitmap;

.field private mTempBitmapLow:Landroid/graphics/Bitmap;

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private needsFadingHighEdge()Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalRight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private needsFadingLowEdge()Z
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private updateLayerType()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingLowEdge()Z

    move-result v9

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingHighEdge()Z

    move-result v8

    if-nez v9, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v8, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    :cond_1
    if-nez v9, :cond_2

    if-eqz v8, :cond_5

    :cond_2
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    sub-int v7, v1, v2

    :goto_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    add-int v6, v1, v2

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    :goto_2
    add-int v2, v7, v1

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    :goto_3
    sub-int v1, v6, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v9, :cond_3

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-lez v1, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v12

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v1, v7

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    neg-int v1, v7

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    if-eqz v8, :cond_4

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-lez v1, :cond_4

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v12

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v1, v6, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v1, v6, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v1, v6, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v6

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3
.end method

.method public bridge synthetic focusSearch(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildDrawingOrder(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasOverlappingRendering()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_numberOfRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->updateLayerType()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public bridge synthetic onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setGravity(I)V

    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method public bridge synthetic setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public bridge synthetic setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method

.method public setRowHeight(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 4

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPositionSmooth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    return-void
.end method

.method public bridge synthetic setWindowAlignment(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    return-void
.end method
