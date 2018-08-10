.class Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;
.super Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;
.source "SemDropShadowImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemDropShadowImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowColorAnimationParams"
.end annotation


# instance fields
.field public mEndValueAlpha:F

.field public mEndValueBlue:F

.field public mEndValueGreen:F

.field public mEndValueRed:F

.field public mStartValueAlpha:F

.field public mStartValueBlue:F

.field public mStartValueGreen:F

.field public mStartValueRed:F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter;IIJJLandroid/animation/TimeInterpolator;)V
    .locals 8

    iput-object p1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;-><init>(Lcom/samsung/android/graphics/SemImageFilter;JJLandroid/animation/TimeInterpolator;)V

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueRed:F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueGreen:F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueBlue:F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueAlpha:F

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueRed:F

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueGreen:F

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueBlue:F

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueAlpha:F

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
    .locals 1

    new-instance v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;-><init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;)V

    return-object v0
.end method
