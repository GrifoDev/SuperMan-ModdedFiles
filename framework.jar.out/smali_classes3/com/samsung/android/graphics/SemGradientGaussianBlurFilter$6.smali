.class Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;
.super Ljava/lang/Object;
.source "SemGradientGaussianBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->animateGradientAngle(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;FF)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->params:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemGradientGaussianBlurFilter animateGradientAngle aFraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iget v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->val$aEndValue:F

    iget v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->val$aStartValue:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->val$aStartValue:F

    add-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-set0(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get0(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    sget-boolean v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemGradientGaussianBlurFilter animateGradientAngle tanOfAngleInRadians = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->params:[F

    aput v0, v1, v4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->params:[F

    aget v2, v2, v4

    aput v2, v1, v5

    const-string/jumbo v1, "filterParams"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$6;->params:[F

    invoke-virtual {p2, v1, v2, v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void
.end method
