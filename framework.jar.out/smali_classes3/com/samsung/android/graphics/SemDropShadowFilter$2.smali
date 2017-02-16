.class Lcom/samsung/android/graphics/SemDropShadowFilter$2;
.super Ljava/lang/Object;
.source "SemDropShadowFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDropShadowFilter;->animateDistance(FFJJLandroid/animation/TimeInterpolator;)[I
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
    .param p1, "this$0"    # Lcom/samsung/android/graphics/SemDropShadowFilter;
    .param p2, "val$aEndValue"    # F
    .param p3, "val$aStartValue"    # F

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iput p2, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->val$aEndValue:F

    iput p3, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->val$aStartValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params1:[F

    .line 362
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params2:[F

    .line 360
    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 11
    .param p1, "aFraction"    # F
    .param p2, "aImageFilterAnimator"    # Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 368
    sget-boolean v5, Lcom/samsung/android/graphics/SemDropShadowFilter;->sLogingEnabled:Z

    if-eqz v5, :cond_0

    .line 369
    const-string/jumbo v5, "HWUIIF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SemDropShadowFilter animateDistance aFraction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->val$aEndValue:F

    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->val$aStartValue:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    iget v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->val$aStartValue:F

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 373
    .local v0, "distance":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 374
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v5, v0}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-set1(Lcom/samsung/android/graphics/SemDropShadowFilter;F)F

    .line 376
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v5}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get0(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v5

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    const v6, 0x40490fd8

    mul-float v2, v5, v6

    .line 378
    .local v2, "radian":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 379
    .local v3, "xdir":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 381
    .local v4, "ydir":F
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v5}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get1(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v6}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v6

    div-float v1, v5, v6

    .line 383
    .local v1, "normDistance":F
    mul-float/2addr v3, v1

    .line 384
    mul-float/2addr v4, v1

    .line 386
    sget-boolean v5, Lcom/samsung/android/graphics/SemDropShadowFilter;->sLogingEnabled:Z

    if-eqz v5, :cond_1

    .line 387
    const-string/jumbo v5, "HWUIIF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SemDropShadowFilter animateDistance normDistance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string/jumbo v5, "HWUIIF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SemDropShadowFilter animateDistance mQuality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v7}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v5, "HWUIIF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SemDropShadowFilter animateDistance xdir = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v5, "HWUIIF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SemDropShadowFilter animateDistance ydir = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params1:[F

    aput v3, v5, v8

    .line 394
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params1:[F

    aput v4, v5, v9

    .line 395
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v5, v5, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params1:[F

    aget v6, v6, v8

    aput v6, v5, v9

    .line 396
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v5, v5, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params1:[F

    aget v6, v6, v9

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 397
    const-string/jumbo v5, "filterParams"

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params1:[F

    invoke-virtual {p2, v5, v6, v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 399
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params2:[F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    invoke-static {v6}, Lcom/samsung/android/graphics/SemDropShadowFilter;->-get2(Lcom/samsung/android/graphics/SemDropShadowFilter;)F

    move-result v6

    aput v6, v5, v8

    .line 400
    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->this$0:Lcom/samsung/android/graphics/SemDropShadowFilter;

    iget-object v5, v5, Lcom/samsung/android/graphics/SemGenericImageFilter;->mParams:[F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params2:[F

    aget v6, v6, v8

    aput v6, v5, v10

    .line 401
    const-string/jumbo v5, "filterParams"

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowFilter$2;->params2:[F

    invoke-virtual {p2, v5, v6, v10}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FI)V

    .line 367
    .end local v1    # "normDistance":F
    .end local v2    # "radian":F
    .end local v3    # "xdir":F
    .end local v4    # "ydir":F
    :cond_2
    return-void
.end method
