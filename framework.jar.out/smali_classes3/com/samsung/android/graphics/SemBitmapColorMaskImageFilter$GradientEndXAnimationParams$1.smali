.class Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6

    const/16 v3, 0xe

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    const-string/jumbo v1, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/4 v5, 0x1

    move-object v0, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientEndX fraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientEndX endX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndXAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
