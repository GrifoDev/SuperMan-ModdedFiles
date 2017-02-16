.class Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;
.super Ljava/lang/Object;
.source "SemGradientGaussianBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->animateGradientTopY(FFJJLandroid/animation/TimeInterpolator;)[I
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
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    .line 407
    iput-object p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->params:[F

    .line 407
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 5
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 414
    sget-boolean v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    .line 415
    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemGradientGaussianBlurFilter animateGradientTopY aFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->val$aEndValue:F

    iget v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->val$aStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->val$aStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-set4(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F

    .line 420
    sget-boolean v0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_1

    .line 421
    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemGradientGaussianBlurFilter animateGradientTopY mTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get4(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->params:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get4(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v1

    aput v1, v0, v3

    .line 425
    iget-object v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->params:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 426
    const-string/jumbo v0, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$4;->params:[F

    invoke-virtual {p2, v0, v1, v4}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 413
    return-void
.end method
