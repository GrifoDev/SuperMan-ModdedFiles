.class public Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"


# instance fields
.field private final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_notification_NotificationDozeHelper_3101(Ljava/util/function/Consumer;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fadeGrayscale(Landroid/widget/ImageView;ZJ)V
    .locals 7

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Landroid/widget/ImageView;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;ZLandroid/widget/ImageView;)V

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method public setIntensityDark(Ljava/util/function/Consumer;ZZJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Float;",
            ">;ZZJ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$mrZnuGpGaPmmUw8hQkArZeLgDzo;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$mrZnuGpGaPmmUw8hQkArZeLgDzo;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateGrayscale(Landroid/widget/ImageView;F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public updateGrayscale(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGrayscaleMatrix(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    return-void
.end method
