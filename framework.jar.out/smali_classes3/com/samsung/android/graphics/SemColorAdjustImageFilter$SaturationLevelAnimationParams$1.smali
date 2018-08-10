.class Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;
.super Ljava/lang/Object;
.source "SemColorAdjustImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->mEndSaturationLevel:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->mStartSaturationLevel:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->mStartSaturationLevel:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->-set2(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->-get2(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)F

    move-result v1

    const/high16 v2, -0x3d380000    # -100.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->-set2(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->-wrap0(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)V

    const-string/jumbo v0, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->mParams:[F

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemColorAdjustImageFilter animateSaturationLevel fraction = "

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

    const-string/jumbo v2, "SemColorAdjustImageFilter animateSaturationLevel level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemColorAdjustImageFilter$SaturationLevelAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorAdjustImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemColorAdjustImageFilter;->-get2(Lcom/samsung/android/graphics/SemColorAdjustImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
