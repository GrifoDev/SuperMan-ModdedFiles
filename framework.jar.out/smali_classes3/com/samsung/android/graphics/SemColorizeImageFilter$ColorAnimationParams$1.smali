.class Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;
.super Ljava/lang/Object;
.source "SemColorizeImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 10

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mEndRed:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartRed:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartRed:F

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mEndGreen:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartGreen:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartGreen:F

    add-float v8, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mEndBlue:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartBlue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartBlue:F

    add-float v7, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mEndAlpha:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartAlpha:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->mStartAlpha:F

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v9, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v8, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v7, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v6, v4, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string/jumbo v1, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v5, 0x4

    move-object v0, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemColorizeImageFilter animateColor fraction = "

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

    const-string/jumbo v2, "SemColorizeImageFilter animateColor redColor = "

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

    const-string/jumbo v2, "SemColorizeImageFilter animateColor greenColor = "

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

    const-string/jumbo v2, "SemColorizeImageFilter animateColor blueColor = "

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

    const-string/jumbo v2, "SemColorizeImageFilter animateColor alphaColor = "

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
