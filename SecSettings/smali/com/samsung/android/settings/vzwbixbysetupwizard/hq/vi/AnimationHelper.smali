.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;
    .locals 5

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$23;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$23;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$24;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$24;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;
    .locals 5

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$21;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$21;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$22;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$22;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animTextFromBottomAlphaTrans(Landroid/view/View;JJF)Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    move/from16 v2, p5

    const-string/jumbo v4, "trans"

    new-array v5, v7, [F

    aput p5, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$11;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$11;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$12;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    move/from16 v3, p5

    move/from16 v1, p6

    const-string/jumbo v5, "trans"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput p5, v6, v7

    aput p6, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$4;

    move/from16 v0, p6

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper$4;-><init>(Landroid/view/View;F)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    invoke-virtual {v2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
