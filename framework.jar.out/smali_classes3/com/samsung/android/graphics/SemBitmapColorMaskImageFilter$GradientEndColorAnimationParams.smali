.class Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;
.super Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;
.source "SemBitmapColorMaskImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GradientEndColorAnimationParams"
.end annotation


# instance fields
.field public mFirstAlpha:F

.field public mFirstBlue:F

.field public mFirstGreen:F

.field public mFirstRed:F

.field public mLastAlpha:F

.field public mLastBlue:F

.field public mLastGreen:F

.field public mLastRed:F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;IIJJLandroid/animation/TimeInterpolator;)V
    .locals 8

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

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

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstRed:F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstGreen:F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstBlue:F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstAlpha:F

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastRed:F

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastGreen:F

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastBlue:F

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastAlpha:F

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
    .locals 1

    new-instance v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;-><init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;)V

    return-object v0
.end method
