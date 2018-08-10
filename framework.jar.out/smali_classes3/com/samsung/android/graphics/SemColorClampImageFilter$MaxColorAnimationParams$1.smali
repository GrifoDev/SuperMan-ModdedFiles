.class Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;
.super Ljava/lang/Object;
.source "SemColorClampImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 10

    const/4 v3, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndRed:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartRed:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartRed:F

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndGreen:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartGreen:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartGreen:F

    add-float v8, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndBlue:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartBlue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartBlue:F

    add-float v7, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mEndAlpha:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartAlpha:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->mStartAlpha:F

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v9, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v8, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v7, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v6, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string/jumbo v1, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MaxColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    move-object v0, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemColorClampImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemColorClampImageFilter animateMaxColor fraction = "

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

    const-string/jumbo v2, "SemColorClampImageFilter animateMaxColor redColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemColorClampImageFilter animateMaxColor greenColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemColorClampImageFilter animateMaxColor blueColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemColorClampImageFilter animateMaxColor alphaColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
