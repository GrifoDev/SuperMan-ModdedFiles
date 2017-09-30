.class public Lcom/android/incallui/util/VideoAnimator;
.super Ljava/lang/Object;


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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v5, [F

    int-to-float v3, p1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/b/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static setButtonFullScreen(Landroid/view/View;IZZ)V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_1

    const-string v0, "VideoAnimator"

    const-string v1, "setButtonFullScreen : bg or button is null."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    move p1, v0

    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v0, 0x32

    if-eqz p2, :cond_3

    add-int/2addr v0, p1

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    int-to-float v0, v0

    aput v0, v4, v6

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v0, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    new-array v1, v7, [Landroid/animation/Animator;

    aput-object v0, v1, v6

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p3, :cond_4

    const-wide/16 v0, 0x12c

    :goto_2
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3e4ccccd    # 0.2f

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v0, v8, v1, v6}, Landroid/support/v4/view/b/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "VideoAnimator"

    const-string v1, "setButtonFullScreen : moveAnim is already running."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v7, [F

    aput v8, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v0, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-eqz p3, :cond_6

    const-wide/16 v2, 0xc8

    :cond_6
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    invoke-static {p2}, Lcom/android/incallui/util/VideoCallAppLogging;->cleanViewEnter(Z)V

    goto/16 :goto_0

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
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCardMetrics;->indicator_area:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    neg-int v0, v0

    int-to-float v0, v0

    aput v0, v4, v1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v0, v6, v1, v3}, Landroid/support/v4/view/b/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoAnimator"

    const-string v1, "moveAnim is already running."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v5, [F

    aput v6, v3, v1

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static setSecondaryBannerFullScreen(Landroid/view/View;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_2

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v4, [F

    aput v6, v2, v5

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v0, 0x3ea8f5c3    # 0.33f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v0, v6, v2, v3}, Landroid/support/v4/view/b/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "VideoAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSecondaryBannerFullScreen animation was operated isfullscreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VideoAnimator"

    const-string v1, "moveAnim is already running."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    int-to-float v0, v0

    aput v0, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public change(Lcom/android/incallui/util/VideoTemplate;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1, v0}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VideoAnimator"

    const-string v1, "change same animation is running"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "VideoAnimator"

    const-string v1, "change animation is running"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_4

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v3, v2, :cond_5

    :cond_4
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "VideoAnimator"

    const-string v1, "change without animation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

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
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    iget-object v1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p1, v0}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "VideoAnimator"

    const-string v1, "same animation is running"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "VideoAnimator"

    const-string v1, "forcely end animation for new animation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v3, "y"

    new-array v4, v7, [F

    aput v1, v4, v8

    aput v1, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v3, "x"

    new-array v4, v7, [F

    aput v0, v4, v8

    aput v0, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v8

    aput-object v0, v6, v9

    aput-object v4, v6, v7

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    nop

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
    .locals 10

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p2, v0}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "VideoAnimator"

    const-string v1, "same animation is running"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "VideoAnimator"

    const-string v1, "forcely end animation for new animation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mStart:Lcom/android/incallui/util/VideoTemplate;

    iput-object p2, p0, Lcom/android/incallui/util/VideoAnimator;->mEnd:Lcom/android/incallui/util/VideoTemplate;

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    div-float/2addr v2, v6

    const-string v6, "VideoAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move with animation - duration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    iget-object v6, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v7, "y"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v1, 0x1

    aput v5, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v6, "x"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v0, 0x1

    aput v4, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v5, "scaleX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v5, "scaleY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/util/VideoAnimator;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public moveVertical(Landroid/view/View;FI)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    if-nez v0, :cond_1

    const-string v0, "VideoAnimator"

    const-string v1, "moveVertical - start_templete is null."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v1, p1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v0, "VideoAnimator"

    const-string v1, "moveVertical - end_templete is null or end_templete is same as start_templete."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/VideoAnimator;->mTarget:Landroid/view/View;

    return-void
.end method
