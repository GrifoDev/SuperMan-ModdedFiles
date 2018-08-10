.class public Lcom/android/systemui/statusbar/phone/SettingsButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "SettingsButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SettingsButton$1;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mLongPressCallback:Ljava/lang/Runnable;

.field private mSlop:F

.field private mUpToSpeed:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/SettingsButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SettingsButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton$1;-><init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private cancelLongClick()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startExitAnimation()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mContext:Landroid/content/Context;

    const v2, 0x10c0002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/SettingsButton$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton$2;-><init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public isTunerClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mLongPressCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/SettingsButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->startExitAnimation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    neg-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelLongClick()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mSlop:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected startAccelSpin()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelAnimation()V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10c0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SettingsButton$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton$3;-><init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected startContinuousSpin()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->cancelAnimation()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/SettingsButton;->performHapticFeedback(I)Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mUpToSpeed:Z

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
