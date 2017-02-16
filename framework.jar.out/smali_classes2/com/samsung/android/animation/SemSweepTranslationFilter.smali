.class public Lcom/samsung/android/animation/SemSweepTranslationFilter;
.super Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.source "SemSweepTranslationFilter.java"


# static fields
.field private static final BG_ALPHA:I = 0xe1

.field private static final COEFFICIENT_FOR_VELOCITY_ADJUSTMENT:I = 0x17

.field private static final DEBUGGABLE_LOW:Z

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final SWEEP_TEXT_PADDING_DP:I = 0x10

.field private static SWEEP_TEXT_PADDING_PX:I = 0x0

.field private static final SWIPE_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SemSweepTranslationFilter"

.field private static VELOCITY_UNITS:I

.field private static sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private final DEBUGGABLE:Z

.field private final leftColor:I

.field private mBgLeftGreen:Landroid/graphics/Paint;

.field private mBgRightYellow:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDeltaX:F

.field private mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEndXOfActionUpAnimator:F

.field private mListView:Landroid/widget/ListView;

.field private mSweepBitmap:Landroid/graphics/Bitmap;

.field private mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

.field private mSweepDirection:I

.field private mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

.field private mSweepRect:Landroid/graphics/Rect;

.field private mSweepRectFullyDrawn:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextPaintSize:I

.field private mViewForeground:Landroid/view/View;

.field private mViewTop:I

.field private final rightColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    .line 75
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    .line 79
    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->VELOCITY_UNITS:I

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;-><init>()V

    .line 41
    iput-boolean v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE:Z

    .line 47
    const/16 v0, 0x6e

    const/16 v1, 0xbd

    const/16 v2, 0x52

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    .line 49
    const/16 v0, 0xeb

    const/16 v1, 0x85

    invoke-static {v0, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    .line 63
    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    .line 65
    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 69
    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    .line 77
    iput v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    .line 81
    iput v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDeltaX:F

    .line 83
    iput-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .line 87
    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    .line 93
    iput-boolean v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    .line 94
    iput v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    .line 100
    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    .line 101
    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->leftColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    .line 102
    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->rightColor:I

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightYellow:Landroid/graphics/Paint;

    .line 103
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->convertDipToPixels(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->SWEEP_TEXT_PADDING_PX:I

    .line 99
    return-void
.end method

.method private static convertDipToPixels(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 118
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "clipRect"    # Landroid/graphics/Rect;
    .param p3, "rectPaint"    # Landroid/graphics/Paint;
    .param p4, "rectAlpha"    # I
    .param p5, "iconDrawableRect"    # Landroid/graphics/Rect;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "textSize"    # F
    .param p8, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 339
    const/4 v0, 0x0

    cmpl-float v0, p7, v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 346
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 348
    if-eqz p8, :cond_1

    .line 349
    if-eqz p5, :cond_0

    .line 350
    invoke-virtual {p8, p5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 352
    :cond_0
    invoke-virtual {p8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, p6, p5}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 333
    return-void

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mTextPaintSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;
    .locals 32
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "sweepProgress"    # F

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    if-nez v3, :cond_0

    .line 224
    const/4 v3, 0x0

    return-object v3

    .line 226
    :cond_0
    const/16 v29, 0x0

    .line 227
    .local v29, "viewTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v30

    .line 228
    .local v30, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v27

    .line 229
    .local v27, "viewHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 231
    .local v28, "viewLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 233
    .local v25, "parentView":Landroid/view/View;
    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 234
    move-object/from16 v0, v25

    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_4

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v29

    .line 243
    :cond_1
    :goto_0
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    .line 246
    new-instance v3, Landroid/graphics/Rect;

    add-int v6, v29, v27

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v3, v0, v1, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 253
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v30

    move/from16 v1, v27

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 255
    :cond_2
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .local v4, "canvas":Landroid/graphics/Canvas;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 259
    .local v22, "deltaXAbs":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v22, v3

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v26, v3, v6

    .line 265
    .local v26, "rectAlpha":F
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_5

    .line 266
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 270
    .local v21, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    .line 271
    .local v23, "drawableBound":Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v31

    .line 272
    .local v31, "width":I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 277
    .local v24, "height":I
    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, p2

    float-to-int v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v27

    invoke-direct {v5, v6, v7, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .local v5, "clipLeftRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    .line 279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    add-int v6, v6, v31

    const/4 v7, 0x0

    .line 278
    move/from16 v0, v24

    invoke-direct {v8, v3, v7, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 280
    .local v8, "iconDrawableRect":Landroid/graphics/Rect;
    sub-int v3, v27, v24

    div-int/lit8 v3, v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v9, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v10, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v11, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    .line 284
    const/16 v7, 0xff

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    .line 289
    new-instance v11, Landroid/graphics/Rect;

    move/from16 v0, p2

    float-to-int v3, v0

    const/4 v6, 0x0

    move/from16 v0, v30

    move/from16 v1, v27

    invoke-direct {v11, v3, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 290
    .local v11, "clipRightRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgLeftGreen:Landroid/graphics/Paint;

    move/from16 v0, v26

    float-to-int v13, v0

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v15, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textLeftToRight:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v14, v8

    .line 290
    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    .line 329
    .end local v5    # "clipLeftRect":Landroid/graphics/Rect;
    .end local v8    # "iconDrawableRect":Landroid/graphics/Rect;
    .end local v11    # "clipRightRect":Landroid/graphics/Rect;
    .end local v21    # "d":Landroid/graphics/drawable/Drawable;
    .end local v23    # "drawableBound":Landroid/graphics/Rect;
    .end local v24    # "height":I
    .end local v31    # "width":I
    :cond_3
    :goto_1
    return-object v4

    .line 239
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v22    # "deltaXAbs":F
    .end local v26    # "rectAlpha":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v29, v3, v6

    goto/16 :goto_0

    .line 294
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v22    # "deltaXAbs":F
    .restart local v26    # "rectAlpha":F
    :cond_5
    const/4 v3, 0x0

    cmpg-float v3, p3, v3

    if-gez v3, :cond_3

    .line 295
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 300
    .restart local v21    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    .line 301
    .restart local v23    # "drawableBound":Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v31

    .line 302
    .restart local v31    # "width":I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 309
    .restart local v24    # "height":I
    new-instance v11, Landroid/graphics/Rect;

    move/from16 v0, v22

    float-to-int v3, v0

    sub-int v3, v30, v3

    const/4 v6, 0x0

    move/from16 v0, v30

    move/from16 v1, v27

    invoke-direct {v11, v3, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 310
    .restart local v11    # "clipRightRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    sub-int v3, v30, v31

    .line 311
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    .line 310
    sub-int/2addr v3, v6

    .line 312
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v6, v6, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawablePadding:I

    .line 311
    sub-int v6, v30, v6

    const/4 v7, 0x0

    .line 310
    move/from16 v0, v24

    invoke-direct {v8, v3, v7, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 313
    .restart local v8    # "iconDrawableRect":Landroid/graphics/Rect;
    sub-int v3, v27, v24

    div-int/lit8 v3, v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightYellow:Landroid/graphics/Paint;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v15, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 317
    const/16 v13, 0xff

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v14, v8

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    .line 322
    new-instance v5, Landroid/graphics/Rect;

    move/from16 v0, v22

    float-to-int v3, v0

    sub-int v3, v30, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v27

    invoke-direct {v5, v6, v7, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    .restart local v5    # "clipLeftRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mBgRightYellow:Landroid/graphics/Paint;

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget-object v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textRightToLeft:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    iget v0, v3, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->textSize:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v17, v8

    .line 323
    invoke-direct/range {v12 .. v20}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;ILandroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "iconDrawableRect"    # Landroid/graphics/Rect;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 364
    .local v0, "cHeight":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 369
    .local v1, "cWidth":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v4, "r":Landroid/graphics/Rect;
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 371
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, p3, v8, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 373
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 374
    .local v2, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 380
    .local v3, "fontHeight":F
    const/4 v5, 0x0

    .local v5, "x":F
    const/4 v6, 0x0

    .line 384
    .local v6, "y":F
    if-eqz p4, :cond_0

    .line 385
    iget v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 387
    iget v7, p4, Landroid/graphics/Rect;->left:I

    sget v8, Lcom/samsung/android/animation/SemSweepTranslationFilter;->SWEEP_TEXT_PADDING_PX:I

    sub-int/2addr v7, v8

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-float v5, v7

    .line 395
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v7, :cond_1

    .line 396
    iget-object v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 399
    :cond_1
    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v3, v8

    add-float/2addr v7, v8

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v6, v7, v8

    .line 402
    iget-boolean v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    if-eqz v7, :cond_2

    .line 403
    iget v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewTop:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 404
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRectFullyDrawn:Z

    .line 407
    :cond_2
    invoke-virtual {p1, p3, v5, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 361
    return-void

    .line 388
    :cond_3
    iget v7, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepDirection:I

    if-nez v7, :cond_0

    .line 390
    iget v7, p4, Landroid/graphics/Rect;->right:I

    sget v8, Lcom/samsung/android/animation/SemSweepTranslationFilter;->SWEEP_TEXT_PADDING_PX:I

    add-int/2addr v7, v8

    int-to-float v5, v7

    goto :goto_0
.end method

.method private drawTextToCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 528
    .local v0, "cHeight":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 533
    .local v1, "cWidth":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 534
    .local v2, "r":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 535
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p2, p3, v6, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 536
    int-to-float v5, v1

    div-float/2addr v5, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 537
    .local v3, "x":F
    int-to-float v5, v0

    div-float/2addr v5, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 538
    .local v4, "y":F
    invoke-virtual {p1, p3, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 523
    return-void
.end method

.method private getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 515
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 516
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 520
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v0
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
    .locals 14
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "adjustedVelocityX"    # F
    .param p3, "scaledTouchSlop"    # I
    .param p4, "deltaX"    # F
    .param p5, "isSweepPattern"    # Z

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v9

    .line 419
    .local v9, "translationX":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 420
    .local v10, "width":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 422
    .local v1, "deltaXAbs":F
    int-to-float v11, v10

    cmpl-float v11, v9, v11

    if-lez v11, :cond_0

    .line 423
    int-to-float v9, v10

    .line 429
    :cond_0
    sget-boolean v11, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "SemSweepTranslationFilter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SemSweepTranslationFilter : createActionUpAnimator() : Math.abs(adjustedVelocityX) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    sget-boolean v11, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "SemSweepTranslationFilter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SemSweepTranslationFilter : createActionUpAnimator() : scaledTouchSlop * 23 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 431
    mul-int/lit8 v13, p3, 0x17

    .line 430
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-int/lit8 v12, p3, 0x17

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    if-eqz p5, :cond_6

    .line 436
    sget-boolean v11, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "SemSweepTranslationFilter"

    const-string/jumbo v12, "SemSweepTranslationFilter : createActionUpAnimator() : kick in animation with given velocity, point #1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    sub-int v8, v10, v11

    .line 439
    .local v8, "remainingDistance":I
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v10

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    const/high16 v12, 0x44160000    # 600.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    int-to-long v2, v11

    .line 442
    .local v2, "duration":J
    const-wide/16 v12, 0x258

    cmp-long v11, v2, v12

    if-lez v11, :cond_4

    .line 443
    const-wide/16 v2, 0x258

    .line 445
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v11

    int-to-float v12, v10

    mul-float v5, v11, v12

    .line 446
    .local v5, "endX":F
    const/4 v4, 0x0

    .line 464
    .end local v8    # "remainingDistance":I
    .local v4, "endAlpha":F
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gez v11, :cond_5

    .line 466
    const-wide/16 v2, 0x258

    .line 471
    :cond_5
    iput v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    .line 473
    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v4, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 474
    .local v6, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v5, v12, v13

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 476
    .local v7, "pvhTranslationX":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {p1, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    sget-object v11, Lcom/samsung/android/animation/SemSweepTranslationFilter;->sDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    return-object v0

    .line 448
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":J
    .end local v4    # "endAlpha":F
    .end local v5    # "endX":F
    .end local v6    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "pvhTranslationX":Landroid/animation/PropertyValuesHolder;
    :cond_6
    int-to-float v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    cmpl-float v11, v1, v11

    if-lez v11, :cond_8

    .line 449
    sget-boolean v11, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v11, :cond_7

    const-string/jumbo v11, "SemSweepTranslationFilter"

    const-string/jumbo v12, "SemSweepTranslationFilter : createActionUpAnimator() : Greater than a half of the width, point #2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_7
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v10

    div-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    const/high16 v12, 0x44160000    # 600.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    int-to-long v2, v11

    .line 452
    .restart local v2    # "duration":J
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->signum(F)F

    move-result v11

    int-to-float v12, v10

    mul-float v5, v11, v12

    .line 453
    .restart local v5    # "endX":F
    const/4 v4, 0x0

    .restart local v4    # "endAlpha":F
    goto :goto_0

    .line 455
    .end local v2    # "duration":J
    .end local v4    # "endAlpha":F
    .end local v5    # "endX":F
    :cond_8
    sget-boolean v11, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "SemSweepTranslationFilter"

    const-string/jumbo v12, "SemSweepTranslationFilter : createActionUpAnimator() : Not far enough - animate it back, point #3"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_9
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x44160000    # 600.0f

    mul-float/2addr v11, v12

    int-to-float v12, v10

    div-float/2addr v11, v12

    float-to-int v11, v11

    int-to-long v2, v11

    .line 458
    .restart local v2    # "duration":J
    const/4 v5, 0x0

    .line 459
    .restart local v5    # "endX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 460
    .restart local v4    # "endAlpha":F
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->mIsAnimationBack:Z

    goto/16 :goto_0
.end method

.method public doMoveAction(Landroid/view/View;FI)V
    .locals 6
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v3, p2, v4

    .line 182
    .local v3, "sweepProgress":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 183
    .local v2, "deltaXAbs":F
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    .line 184
    iput p2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDeltaX:F

    .line 191
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v1

    .line 194
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v4

    .line 196
    .local v0, "alphaForeground":F
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 199
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 200
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v4, p3, v3, v1}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v4, :cond_1

    .line 205
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 213
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 214
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 180
    :cond_2
    return-void
.end method

.method public doRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 174
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->mIsAnimationBack:Z

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->removeCachedBitmap()V

    .line 166
    return-void
.end method

.method public doUpActionWhenAnimationUpdate(IF)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "sweepProgress"    # F

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 494
    .local v1, "deltaX":F
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, p2, v2

    .line 498
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    invoke-direct {p0, v2, v1, p2}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    move-result-object v0

    .line 501
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 502
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweep(IFLandroid/graphics/Canvas;)V

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getBitmapDrawableToSweepBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 506
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 507
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 491
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    :cond_0
    return-void
.end method

.method public getBitmapDrawableBound()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 136
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    .local v0, "rect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public getEndXOfActionUpAnimator()F
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mEndXOfActionUpAnimator:F

    return v0
.end method

.method public getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 141
    sget-boolean v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->DEBUGGABLE_LOW:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemSweepTranslationFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSweepBitmapDrawable : mDrawSweepBitmapDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "deltaX"    # F
    .param p3, "position"    # I
    .param p4, "listener"    # Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
    .param p5, "sweepConfig"    # Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .prologue
    .line 159
    iput-object p4, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepListener:Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    .line 160
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    .line 161
    iput-object p5, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepConfiguration:Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;

    .line 157
    return-void
.end method

.method public bridge synthetic isAnimationBack()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    return v0
.end method

.method public removeCachedBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mDrawSweepBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 547
    iput-object v1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mSweepBitmap:Landroid/graphics/Bitmap;

    .line 542
    :cond_0
    return-void
.end method

.method public setForegroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "viewForeground"    # Landroid/view/View;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepTranslationFilter;->mViewForeground:Landroid/view/View;

    .line 123
    return-void
.end method
