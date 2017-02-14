.class public Lcom/android/incallui/util/VideoAnimator;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/VideoAnimator$Scale;
    }
.end annotation


# static fields
.field public static final DURATION_100MS:I = 0xc8

.field public static final DURATION_200MS:I = 0xc8

.field public static final DURATION_250MS:I = 0xfa

.field public static final DURATION_300MS:I = 0x12c

.field public static final DURATION_500MS:I = 0x1f4

.field public static final DURATION_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoAnimator"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field mEnd:Lcom/android/incallui/util/VideoTemplate;

.field mStart:Lcom/android/incallui/util/VideoTemplate;

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mStart:Lcom/android/incallui/util/VideoTemplate;

    iput-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    return-void
.end method

.method public static moveVertical(Landroid/view/View;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    int-to-float v4, p1

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static setButtonFullScreen(Landroid/view/View;Landroid/view/View;IZZ)V
    .locals 9

    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    const-string v5, "VideoAnimator"

    const-string v6, "setButtonFullScreen : bg or button is null."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    move v3, v1

    :cond_3
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p3, :cond_4

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    int-to-float v8, v3

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p4, :cond_5

    const-wide/16 v6, 0x12c

    :goto_2
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "VideoAnimator"

    const-string v6, "setButtonFullScreen : moveAnim is already running."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-eqz p4, :cond_7

    const-wide/16 v6, 0xc8

    :goto_3
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-static {p3}, Lcom/android/incallui/util/VideoCallAppLogging;->cleanViewEnter(Z)V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_3

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static setCallCardFullScreen(Landroid/view/View;Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v2

    iget-object v6, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;

    iget v1, v6, Lcom/android/incallui/service/vt/VideoCallMetrics$CallCardMetrics;->indicator_area:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v4, v6, v1

    const/4 v5, 0x0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_3

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    neg-int v8, v4

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v5, v6, v9

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v6, v11, v7, v8}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "VideoAnimator"

    const-string v7, "moveAnim is already running."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_1
.end method

.method public static setSecondaryBannerFullScreen(Landroid/view/View;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v3, v8, v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v3, "VideoAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSecondaryBannerFullScreen animation was operated isfullscreen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "VideoAnimator"

    const-string v4, "moveAnim is already running."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public change(Lcom/android/incallui/util/VideoTemplate;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1, v3}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "VideoAnimator"

    const-string v4, "change same animation is running"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "VideoAnimator"

    const-string v4, "change animation is running"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_4

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v3, v0, :cond_5

    :cond_4
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "VideoAnimator"

    const-string v4, "change without animation"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iput-object v1, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public fadeIn(Lcom/android/incallui/util/VideoTemplate;I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1, v7}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "VideoAnimator"

    const-string v8, "same animation is running"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "VideoAnimator"

    const-string v8, "forcely end animation for new animation"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "y"

    new-array v9, v10, [F

    aput v2, v9, v11

    aput v2, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "x"

    new-array v9, v10, [F

    aput v1, v9, v11

    aput v1, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v6, v8, v11

    aput-object v5, v8, v12

    aput-object v0, v8, v10

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, p2

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hasTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(Landroid/view/View;Lcom/android/incallui/util/VideoTemplate;I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v17

    if-nez v17, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "VideoAnimator"

    const-string v18, "same animation is running"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v17, "VideoAnimator"

    const-string v18, "forcely end animation for new animation"

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/util/VideoAnimator;->mStart:Lcom/android/incallui/util/VideoTemplate;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v3, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v4, v0

    div-float v7, v14, v4

    div-float v8, v13, v3

    const-string v17, "VideoAnimator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "move with animation - duration : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v16, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "x"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v5, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v7, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v8, v19, v20

    const/16 v20, 0x1

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    aput-object v2, v18, v19

    const/16 v19, 0x3

    aput-object v10, v18, v19

    const/16 v19, 0x4

    aput-object v9, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public moveVertical(Landroid/view/View;FI)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    if-nez v1, :cond_1

    const-string v2, "VideoAnimator"

    const-string v3, "moveVertical - start_templete is null."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "VideoAnimator"

    const-string v3, "moveVertical - end_templete is null or end_templete is same as start_templete."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v0, p3}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    return-void
.end method
