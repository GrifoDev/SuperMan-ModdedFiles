.class public Lcom/android/systemui/statusbar/phone/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SignalDrawable$1;,
        Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

.field private mState:I

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SignalDrawable;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SignalDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    const/16 v0, 0xc

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sput v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    return-void

    :array_0
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    :array_1
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    :array_2
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    :array_3
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    :array_5
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    :array_6
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_7
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_8
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    :array_9
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    :array_a
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_b
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    :array_c
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    const v0, 0x7f06005d

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    const v0, 0x7f06005e

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    const v0, 0x7f0600e1

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    const v0, 0x7f0600e2

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070662

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    return-void
.end method

.method private calcFit(F)F
    .locals 4

    const/4 v1, 0x0

    move v2, p1

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    aget v3, v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    mul-float/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .locals 6

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    if-ne p6, v1, :cond_0

    move-object v0, p2

    :goto_0
    add-float v3, p3, p5

    add-float v4, p4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static getAirplaneModeState(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    return v0
.end method

.method private getBackgroundColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getFillColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getLevel(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getNumLevels(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getState(I)I
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getState(IIZ)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSignalState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateAnimation()V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/16 v22, 0x1

    :goto_0
    if-eqz v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x3daaaaab

    mul-float v1, v1, v25

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    move/from16 v0, v23

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v20, v23

    move/from16 v0, v23

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const v1, 0x3f155556

    mul-float v17, v1, v25

    const v1, 0x3e2aaaab

    mul-float v16, v1, v25

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float v6, v1, v20

    const v1, 0x3d2aaaab

    mul-float v18, v1, v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move/from16 v0, v17

    neg-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v16

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v18

    add-float v19, v1, v6

    sub-float v1, v25, v23

    sub-float v4, v1, v6

    sub-float v1, v20, v23

    sub-float v5, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/4 v7, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v10, v4, v19

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v19

    sub-float v10, v4, v1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const v1, 0x3daaaaab

    mul-float v17, v1, v20

    sget v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    mul-float v15, v17, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    add-float v3, v23, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    add-float v2, v23, v15

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float v2, v2, v25

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v7, 0x0

    aget-object v3, v3, v7

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v3, v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v21, 0x1

    :goto_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    array-length v1, v1

    move/from16 v0, v21

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float v2, v2, v25

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v3, v3, v21

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v3, v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x3ea88889

    mul-float v14, v1, v25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    neg-float v3, v14

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    move/from16 v0, v20

    float-to-int v2, v0

    move/from16 v0, v25

    float-to-int v3, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->calcFit(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v23

    sub-float v2, v25, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move/from16 v0, v24

    int-to-float v1, v0

    add-float v10, v23, v1

    sub-float v11, v20, v23

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v8, v23

    move/from16 v9, v23

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    if-eqz v22, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getNumLevels(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setNumLevels(I)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setSignalState(I)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLevel(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setIntrinsicSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return-void
.end method

.method public setNumLevels(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
