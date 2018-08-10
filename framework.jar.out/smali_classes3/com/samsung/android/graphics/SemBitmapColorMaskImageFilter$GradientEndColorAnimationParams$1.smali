.class Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v3, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastRed:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstRed:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstRed:F

    add-float/2addr v1, v2

    invoke-static {v1, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastGreen:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstGreen:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstGreen:F

    add-float/2addr v1, v2

    invoke-static {v1, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastBlue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstBlue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstBlue:F

    add-float/2addr v1, v2

    invoke-static {v1, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mLastAlpha:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->mFirstAlpha:F

    add-float/2addr v1, v2

    invoke-static {v1, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string/jumbo v1, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/4 v5, 0x4

    move-object v0, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientColor fraction = "

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

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientColor redColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientColor greenColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientColor blueColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemBitmapColorMaskImageFilter animateGradientColor alphaColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
