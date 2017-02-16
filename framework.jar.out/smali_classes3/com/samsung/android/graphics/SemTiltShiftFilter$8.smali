.class Lcom/samsung/android/graphics/SemTiltShiftFilter$8;
.super Ljava/lang/Object;
.source "SemTiltShiftFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemTiltShiftFilter;->animateGradientRate(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemTiltShiftFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    .line 470
    iput-object p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->params:[F

    .line 470
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 5
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 477
    sget-boolean v0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    .line 478
    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemTiltShiftFilter animateGradientRate aFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->val$aEndValue:F

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->val$aStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->val$aStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-set4(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F

    .line 483
    sget-boolean v0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_1

    .line 484
    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemTiltShiftFilter animateGradientRate mGradientRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-get4(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->params:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->-get4(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F

    move-result v1

    aput v1, v0, v3

    .line 488
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->this$0:Lcom/samsung/android/graphics/SemTiltShiftFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->params:[F

    aget v1, v1, v3

    aput v1, v0, v4

    .line 489
    const-string/jumbo v0, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;->params:[F

    invoke-virtual {p2, v0, v1, v4}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 476
    return-void
.end method
