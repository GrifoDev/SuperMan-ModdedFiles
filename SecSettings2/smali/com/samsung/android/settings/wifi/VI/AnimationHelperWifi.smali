.class public Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;
.super Ljava/lang/Object;
.source "AnimationHelperWifi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animCommonFromRight(Landroid/view/View;JJ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "trans"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x43480000    # 200.0f

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$9;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static animTitleFromRight(Landroid/view/View;JJ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const-string/jumbo v3, "trans"

    new-array v4, v6, [F

    const/high16 v5, 0x43480000    # 200.0f

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/VI/SineInOut70Wifi;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/VI/SineInOut70Wifi;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
