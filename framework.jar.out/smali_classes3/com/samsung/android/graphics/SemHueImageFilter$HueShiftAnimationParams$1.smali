.class Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;
.super Ljava/lang/Object;
.source "SemHueImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->mEndValue:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->mStartValue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->mStartValue:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/samsung/android/graphics/SemHueImageFilter;->-wrap0(F)F

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->this$0:Lcom/samsung/android/graphics/SemHueImageFilter;

    invoke-static {v0, v6}, Lcom/samsung/android/graphics/SemHueImageFilter;->-wrap1(Lcom/samsung/android/graphics/SemHueImageFilter;F)V

    const-string/jumbo v1, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->this$0:Lcom/samsung/android/graphics/SemHueImageFilter;

    iget-object v2, v0, Lcom/samsung/android/graphics/SemHueImageFilter;->mParams:[F

    const/4 v5, 0x1

    move-object v0, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemHueImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemHueImageFilter animateHueShift fraction = "

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

    const-string/jumbo v2, "SemHueImageFilter animateHueShift mHueShift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemHueImageFilter$HueShiftAnimationParams;->this$0:Lcom/samsung/android/graphics/SemHueImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemHueImageFilter;->-get0(Lcom/samsung/android/graphics/SemHueImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
