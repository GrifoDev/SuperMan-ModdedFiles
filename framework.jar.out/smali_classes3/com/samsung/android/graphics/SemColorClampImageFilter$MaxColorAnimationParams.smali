.class Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;
.super Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;
.source "SemColorClampImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemColorClampImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxColorAnimationParams"
.end annotation


# instance fields
.field public mEndAlpha:F

.field public mEndBlue:F

.field public mEndGreen:F

.field public mEndRed:F

.field public mStartAlpha:F

.field public mStartBlue:F

.field public mStartGreen:F

.field public mStartRed:F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemColorClampImageFilter;IIJJLandroid/animation/TimeInterpolator;)V
    .locals 8

    iput-object p1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

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

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartRed:F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartGreen:F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartBlue:F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartAlpha:F

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndRed:F

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndGreen:F

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndBlue:F

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndAlpha:F

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
    .locals 1

    new-instance v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;-><init>(Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;)V

    return-object v0
.end method
