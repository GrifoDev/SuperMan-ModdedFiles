.class Lcom/samsung/android/graphics/SemDropShadowFilter$4;
.super Ljava/lang/Object;
.source "SemDropShadowFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDropShadowFilter;->animateQuality(FFJJLandroid/animation/TimeInterpolator;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params1:[F

.field private params2:[F

.field final synthetic this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

.field final synthetic val$aEndValue:F

.field final synthetic val$aStartValue:F


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemDropShadowFilter;FF)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params1:[F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params2:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 12

    const/4 v11, 0x7

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/samsung/android/graphics/SemDropShadowFilter;->sLogingEnabled:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "HWUIIF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SemDropShadowFilter animateQuality aFraction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->val$aEndValue:F

    iget v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->val$aStartValue:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    iget v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->val$aStartValue:F

    add-float v1, v6, v7

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v3, v7, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    float-to-int v7, v3

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-set2(Lcom/samsung/android/graphics/SemDropShadowFilter;F)F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v6}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get0(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    const v7, 0x40490fd8

    mul-float v2, v6, v7

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v6}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get1(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v7

    div-float v0, v6, v7

    mul-float/2addr v4, v0

    mul-float/2addr v5, v0

    sget-boolean v6, Lcom/samsung/android/graphics/SemDropShadowFilter;->sLogingEnabled:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "HWUIIF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SemDropShadowFilter animateQuality mQuality = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v8}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "HWUIIF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SemDropShadowFilter animateQuality xdir = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "HWUIIF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SemDropShadowFilter animateQuality ydir = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params1:[F

    aput v4, v6, v9

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params1:[F

    aput v5, v6, v10

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v6, v6, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params1:[F

    aget v7, v7, v9

    aput v7, v6, v10

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v6, v6, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params1:[F

    aget v7, v7, v10

    const/4 v8, 0x2

    aput v7, v6, v8

    const-string/jumbo v6, "filterParams"

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params1:[F

    invoke-virtual {p2, v6, v7, v10}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params2:[F

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v7

    aput v7, v6, v9

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v6, v6, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params2:[F

    aget v7, v7, v9

    aput v7, v6, v11

    const-string/jumbo v6, "filterParams"

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$4;->params2:[F

    invoke-virtual {p2, v6, v7, v11}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void
.end method
