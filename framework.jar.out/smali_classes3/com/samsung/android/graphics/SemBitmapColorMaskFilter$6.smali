.class Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->animateGradientEndY(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;FF)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->params:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemBitmapColorMaskFilter animateGradientEndY aFraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->val$aEndValue:F

    iget v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->val$aStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->val$aStartValue:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    sget-boolean v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "HWUIIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemBitmapColorMaskFilter animateGradientEndY endY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->params:[F

    aput v0, v1, v4

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->params:[F

    aget v2, v2, v4

    aput v2, v1, v5

    const-string/jumbo v1, "filterParams"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter$6;->params:[F

    invoke-virtual {p2, v1, v2, v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void
.end method
