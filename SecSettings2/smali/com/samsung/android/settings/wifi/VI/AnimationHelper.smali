.class public Lcom/samsung/android/settings/wifi/VI/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeAni(Landroid/view/View;FFJJI)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p1, v3, v4

    aput p2, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$2;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 v2, 0x21

    if-ne p7, v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    invoke-virtual {v1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static fromBottom(Landroid/view/View;JJI)V
    .locals 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    const-string/jumbo v6, "log"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v6, "trans"

    new-array v7, v9, [F

    aput v4, v7, v10

    const/4 v8, 0x0

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v10

    aput-object v5, v6, v11

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelper$6;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/16 v6, 0x46

    move/from16 v0, p5

    if-ne v0, v6, :cond_1

    new-instance v6, Lcom/samsung/android/settings/wifi/VI/SineInOut70;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/VI/SineInOut70;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    :goto_0
    new-instance v6, Lcom/samsung/android/settings/wifi/VI/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/VI/SineInOut90;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    const/16 v6, 0x50

    move/from16 v0, p5

    if-ne v0, v6, :cond_2

    new-instance v6, Lcom/samsung/android/settings/wifi/VI/SineInOut80;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/VI/SineInOut80;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x5a

    move/from16 v0, p5

    if-ne v0, v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/wifi/VI/SineInOut90;

    invoke-direct {v6}, Lcom/samsung/android/settings/wifi/VI/SineInOut90;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
