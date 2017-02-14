.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;
    }
.end annotation


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field private mColoredRegions:I

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLastLeftDiv:I

.field mLastRegion:I

.field mLastRightDiv:I

.field private mLeftColor:I

.field mLineWidth:I

.field private mMiddleColor:I

.field private mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowIndicator:Z

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, -0xff6978

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    const v0, -0x312825

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    iput-boolean v1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private pickColor(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    const v0, -0xaaaaab

    return v0

    :cond_1
    return p1
.end method

.method private updateIndicator()V
    .locals 10

    const v3, 0xffffff

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    if-gez v8, :cond_0

    const/4 v8, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_2

    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->getWidth()I

    move-result v17

    const/4 v10, 0x0

    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v14, v1, 0x0

    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v15, v14, v1

    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v15, v1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_7

    move v8, v15

    move/from16 v9, v16

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    if-ne v1, v8, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    if-eq v1, v9, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-eqz v1, :cond_1

    if-ge v8, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    int-to-float v5, v13

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v4, v9

    const/4 v5, 0x0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v8

    add-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v8

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v9

    sub-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v9

    sub-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v14, 0x0

    sub-int v17, v17, v1

    move v10, v14

    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    move v14, v15

    if-ge v10, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v15, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v1, v15, v10

    sub-int v17, v17, v1

    move v10, v15

    :cond_5
    add-int v14, v10, v17

    if-ge v10, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_6
    return-void

    :cond_7
    move v8, v14

    move v9, v15

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v0, v1, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    invoke-interface {v0, v1}, Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;->onRegionTapped(I)V

    iput v2, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setColoredRegions(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setColors(III)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setClickable(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRatios(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    return-void
.end method
