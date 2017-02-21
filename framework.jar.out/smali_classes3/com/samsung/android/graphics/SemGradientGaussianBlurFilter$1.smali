.class Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;
.super Ljava/lang/Object;
.source "SemGradientGaussianBlurFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->animateMinRadius(FFJJLandroid/animation/TimeInterpolator;)[I
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

    iput-object p1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->params:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/high16 v5, 0x437a0000    # 250.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sget-boolean v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemGradientGaussianBlurFilter animateRadius aFraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iget v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->val$aEndValue:F

    iget v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->val$aStartValue:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->val$aStartValue:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-set3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1, v4}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-set3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    const/16 v1, 0x40

    if-le v0, v1, :cond_5

    const/16 v0, 0x40

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemGradientGaussianBlurFilter animateRadius mMinRadius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v3}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; interFactor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->params:[F

    int-to-float v2, v0

    aput v2, v1, v6

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->params:[F

    aget v2, v2, v6

    aput v2, v1, v7

    const-string/jumbo v1, "filterParams"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->params:[F

    invoke-virtual {p2, v1, v2, v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-get3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter$1;->this$0:Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;

    invoke-static {v1, v5}, Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;->-set3(Lcom/samsung/android/graphics/SemGradientGaussianBlurFilter;F)F

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method
