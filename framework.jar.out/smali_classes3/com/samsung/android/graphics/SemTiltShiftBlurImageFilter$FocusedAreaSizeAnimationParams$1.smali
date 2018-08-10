.class Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;
.super Ljava/lang/Object;
.source "SemTiltShiftBlurImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPassCount:I

.field final synthetic this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->mPassCount:I

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mEndAreaTopY:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaTopY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaTopY:F

    add-float/2addr v0, v1

    invoke-static {v0, v4, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mEndAreaBottomY:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaBottomY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaBottomY:F

    add-float/2addr v0, v1

    invoke-static {v0, v4, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v6

    cmpg-float v0, v7, v6

    if-gez v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Invalid parameters! Top edge must be gerater than bottom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v0, v7}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->-set1(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v0, v6}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->-set0(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->-get1(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v1

    sub-float v1, v2, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->-get0(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v1

    sub-float v1, v2, v1

    aput v1, v0, v5

    const-string/jumbo v1, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    move-object v0, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemTiltShiftBlurImageFilter animateZoomRatio fraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemTiltShiftBlurImageFilter animateZoomRatio mFocusedAreaTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->-get1(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemTiltShiftBlurImageFilter animateZoomRatio mFocusedAreaBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->-get0(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
