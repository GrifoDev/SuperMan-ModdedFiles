.class Lcom/samsung/android/graphics/SemMosaicFilter$1;
.super Ljava/lang/Object;
.source "SemMosaicFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemMosaicFilter;->animateRadius(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemMosaicFilter;FF)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->params:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6

    const/high16 v5, 0x44800000    # 1024.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/graphics/SemMosaicFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemMosaicFilter animateRadius aFraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->val$aEndValue:F

    iget v2, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->val$aStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->val$aStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemMosaicFilter;->-set0(Lcom/samsung/android/graphics/SemMosaicFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemMosaicFilter;->-get0(Lcom/samsung/android/graphics/SemMosaicFilter;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-static {v0, v5}, Lcom/samsung/android/graphics/SemMosaicFilter;->-set0(Lcom/samsung/android/graphics/SemMosaicFilter;F)F

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/graphics/SemMosaicFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "HWUIIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemMosaicFilter animateRadius mRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemMosaicFilter;->-get0(Lcom/samsung/android/graphics/SemMosaicFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->params:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemMosaicFilter;->-get0(Lcom/samsung/android/graphics/SemMosaicFilter;)F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->params:[F

    aget v1, v1, v3

    aput v1, v0, v3

    const-string/jumbo v0, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->params:[F

    invoke-virtual {p2, v0, v1, v3}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemMosaicFilter;->-get0(Lcom/samsung/android/graphics/SemMosaicFilter;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemMosaicFilter$1;->this$0:Lcom/samsung/android/graphics/SemMosaicFilter;

    invoke-static {v0, v4}, Lcom/samsung/android/graphics/SemMosaicFilter;->-set0(Lcom/samsung/android/graphics/SemMosaicFilter;F)F

    goto :goto_0
.end method
