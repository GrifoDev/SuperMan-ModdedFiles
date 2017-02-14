.class Lcom/samsung/android/graphics/SemDropShadowFilter$3;
.super Ljava/lang/Object;
.source "SemDropShadowFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDropShadowFilter;->animateAngle(FFJJLandroid/animation/TimeInterpolator;)[I
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

    iput-object p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params1:[F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params2:[F

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v4, Lcom/samsung/android/graphics/SemDropShadowFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemDropShadowFilter animateAngle aFraction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->val$aEndValue:F

    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->val$aStartValue:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->val$aStartValue:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-set0(Lcom/samsung/android/graphics/SemDropShadowFilter;F)F

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v4}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get0(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v4, v5

    const v5, 0x40490fd8

    mul-float v1, v4, v5

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v4}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get1(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v5}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v5

    div-float v0, v4, v5

    mul-float/2addr v2, v0

    mul-float/2addr v3, v0

    sget-boolean v4, Lcom/samsung/android/graphics/SemDropShadowFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemDropShadowFilter animateAngle mAngle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v6}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get0(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemDropShadowFilter animateAngle mQuality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v6}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemDropShadowFilter animateAngle xdir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "HWUIIF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SemDropShadowFilter animateAngle ydir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params1:[F

    aput v2, v4, v7

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params1:[F

    aput v3, v4, v8

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params1:[F

    aget v5, v5, v7

    aput v5, v4, v8

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params1:[F

    aget v5, v5, v8

    const/4 v6, 0x2

    aput v5, v4, v6

    const-string/jumbo v4, "filterParams"

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params1:[F

    invoke-virtual {p2, v4, v5, v8}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params2:[F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v5}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v5

    aput v5, v4, v7

    iget-object v4, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params2:[F

    aget v5, v5, v7

    aput v5, v4, v9

    const-string/jumbo v4, "filterParams"

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$3;->params2:[F

    invoke-virtual {p2, v4, v5, v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    return-void
.end method
