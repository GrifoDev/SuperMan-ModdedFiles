.class public Lcom/android/lg/rambar/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# static fields
.field static final LEFT_COLOR:I = -0xff6634

.field static final MIDDLE_COLOR:I = -0xff6634

.field static final RIGHT_COLOR:I = -0x777778


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLineWidth:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v4, v0

    new-instance v5, Landroid/graphics/Path;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/lg/rambar/LinearColorBar;->setWillNotDraw(Z)V

    move-object v4, v0

    iget-object v4, v4, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/android/lg/rambar/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/android/lg/rambar/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object v4, v0

    iget-object v4, v4, Lcom/android/lg/rambar/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/lg/rambar/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0xf0

    if-lt v5, v6, :cond_0

    const/4 v5, 0x2

    :goto_0
    iput v5, v4, Lcom/android/lg/rambar/LinearColorBar;->mLineWidth:I

    move-object v4, v0

    iget-object v4, v4, Lcom/android/lg/rambar/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object v5, v0

    iget v5, v5, Lcom/android/lg/rambar/LinearColorBar;->mLineWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v4, v0

    iget-object v4, v4, Lcom/android/lg/rambar/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/lg/rambar/LinearColorBar;->getPaddingTop()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/lg/rambar/LinearColorBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    move v1, v3

    move v3, v1

    const/4 v4, 0x0

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    move v1, v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    move-object v3, v0

    iget-object v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/lg/rambar/LinearColorBar;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mShowingGreen:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    const/4 v6, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v8, v8

    move v9, v1

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    int-to-float v9, v9

    const v10, 0x888888

    const v11, -0x777778

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    const/4 v6, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v8, v8

    move v9, v1

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const v10, 0xa0a0a0

    const v11, -0x5f5f60

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    const/4 v6, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v8, v8

    move v9, v1

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    int-to-float v9, v9

    const v10, 0x99cc

    const v11, -0xff6634

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-super/range {v15 .. v16}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object v15, v1

    invoke-virtual {v15}, Lcom/android/lg/rambar/LinearColorBar;->getWidth()I

    move-result v15

    move v3, v15

    const/4 v15, 0x0

    move v4, v15

    move v15, v4

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRedRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move v5, v15

    move v15, v5

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mYellowRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move v6, v15

    move v15, v6

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mGreenRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move v7, v15

    move-object v15, v1

    iget-boolean v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mShowingGreen:Z

    if-eqz v15, :cond_7

    move v15, v6

    move v8, v15

    move v15, v7

    move v9, v15

    :goto_0
    move-object v15, v1

    iget v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mLastInterestingLeft:I

    move/from16 v16, v8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object v15, v1

    iget v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mLastInterestingRight:I

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    :cond_0
    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    move v15, v8

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move v10, v15

    const/4 v15, 0x0

    move v11, v15

    const/4 v15, 0x2

    move v12, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move/from16 v16, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move/from16 v16, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    move-object v15, v1

    iget v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mLineWidth:I

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    move v13, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/16 v16, -0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v13

    add-float v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/16 v16, -0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v13

    add-float v16, v16, v17

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v13

    add-float v18, v18, v19

    const/16 v19, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v13

    add-float v20, v20, v21

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v13

    sub-float v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v13

    sub-float v16, v16, v17

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v13

    sub-float v18, v18, v19

    const/16 v19, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v13

    sub-float v20, v20, v21

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_1
    move-object v15, v1

    move/from16 v16, v8

    move/from16 v0, v16

    iput v0, v15, Lcom/android/lg/rambar/LinearColorBar;->mLastInterestingLeft:I

    move-object v15, v1

    move/from16 v16, v9

    move/from16 v0, v16

    iput v0, v15, Lcom/android/lg/rambar/LinearColorBar;->mLastInterestingRight:I

    :cond_2
    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v15}, Landroid/graphics/Path;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    move v15, v4

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move/from16 v16, v4

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move/from16 v16, v5

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v16, -0xff6634

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v4

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    move v3, v15

    move v15, v5

    move v4, v15

    :cond_4
    move v15, v6

    move v5, v15

    move v15, v4

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move/from16 v16, v4

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move/from16 v16, v5

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v16, -0xff6634

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v4

    sub-int v16, v16, v17

    sub-int v15, v15, v16

    move v3, v15

    move v15, v5

    move v4, v15

    :cond_5
    move v15, v4

    move/from16 v16, v3

    add-int v15, v15, v16

    move v5, v15

    move v15, v4

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move/from16 v16, v4

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move/from16 v16, v5

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    move-object v15, v1

    iget-object v15, v15, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v16, -0x777778

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/lg/rambar/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_6
    return-void

    :cond_7
    move v15, v5

    move v8, v15

    move v15, v6

    move v9, v15

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    move-object v6, v0

    invoke-direct {v6}, Lcom/android/lg/rambar/LinearColorBar;->updateIndicator()V

    return-void
.end method

.method public setRatios(FFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/android/lg/rambar/LinearColorBar;->mRedRatio:F

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/android/lg/rambar/LinearColorBar;->mYellowRatio:F

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/android/lg/rambar/LinearColorBar;->mGreenRatio:F

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/lg/rambar/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/lg/rambar/LinearColorBar;->mShowingGreen:Z

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_0

    :goto_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/android/lg/rambar/LinearColorBar;->mShowingGreen:Z

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/lg/rambar/LinearColorBar;->updateIndicator()V

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/lg/rambar/LinearColorBar;->invalidate()V

    :cond_0
    return-void

    :cond_1
    move v3, v1

    if-nez v3, :cond_0

    goto :goto_0
.end method
