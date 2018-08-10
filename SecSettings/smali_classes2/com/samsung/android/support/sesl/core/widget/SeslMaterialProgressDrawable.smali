.class Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SeslMaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;,
        Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationEndCallback:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mEnding:Z

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const v6, 0x3f547ae1    # 0.83f

    const v5, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e2e147b    # 0.17f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/animation/SeslFastOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/animation/SeslFastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v5, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string/jumbo v1, "#01adcd"

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string/jumbo v1, "#3fc51e"

    const/4 v2, 0x1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->COLORS:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColors([I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->updateSizes(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setupAnimators()V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 12

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v10, v8, 0x18

    and-int/lit16 v5, v10, 0xff

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v9, v10, 0xff

    shr-int/lit8 v10, v8, 0x8

    and-int/lit16 v7, v10, 0xff

    and-int/lit16 v6, v8, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shr-int/lit8 v10, v3, 0x18

    and-int/lit16 v0, v10, 0xff

    shr-int/lit8 v10, v3, 0x10

    and-int/lit16 v4, v10, 0xff

    shr-int/lit8 v10, v3, 0x8

    and-int/lit16 v2, v10, 0xff

    and-int/lit16 v1, v3, 0xff

    sub-int v10, v0, v5

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v10, v5

    shl-int/lit8 v10, v10, 0x18

    sub-int v11, v4, v9

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v9

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    sub-int v11, v2, v7

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v7

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    sub-int v11, v1, v6

    int-to-float v11, v11

    mul-float/2addr v11, p1

    float-to-int v11, v11

    add-int/2addr v11, v6

    or-int/2addr v10, v11

    return v10
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 7

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v2

    mul-double/2addr v4, p1

    iput-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mWidth:D

    float-to-double v4, v2

    mul-double/2addr v4, p3

    iput-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mHeight:D

    double-to-float v3, p7

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    float-to-double v4, v2

    mul-double/2addr v4, p5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorIndex(I)V

    mul-float v3, p9, v2

    mul-float v4, p10, v2

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mWidth:D

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mHeight:D

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method private setupAnimators()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$1;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$2;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method applyFinishTranslation(FLcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V
    .locals 10

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->updateRingColor(FLcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_0

    div-float v2, p1, v6

    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setArrowScale(F)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    double-to-float v4, v6

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getMinProgressArc(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)F

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v5

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v6

    sub-float/2addr v6, v0

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v7

    sub-float/2addr v6, v7

    sget-object v7, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v7, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    invoke-virtual {p2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setStartTrim(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setEndTrim(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v5

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v6

    sub-float v6, v4, v6

    sget-object v7, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v7, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setRotation(F)V

    sget-object v5, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->SINE_OUT_60_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    const v6, 0x3f333333    # 0.7f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mEnding:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;->OnAnimationEnd()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mEnding:Z

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method getMinProgressArc(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)F
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    return v5

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    return v4
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setOnAnimationEndCallback(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRotation:F

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setStartTrim(F)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->storeOriginals()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mFinishing:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mEnding:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimationEndCallback:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$OnAnimationEndCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->resetOriginals()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x693

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setShowArrow(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->mRing:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method updateRingColor(FLcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;)V
    .locals 3

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sub-float v0, p1, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getNextColor()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColor(I)V

    :cond_0
    return-void
.end method

.method public updateSizes(I)V
    .locals 14

    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    if-eqz p1, :cond_0

    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
