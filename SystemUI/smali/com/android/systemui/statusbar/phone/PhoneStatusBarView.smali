.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;
    }
.end annotation


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

.field private mClearCoverMargin:I

.field private mCurrentCoverStatusBarMargin:I

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIsFullyOpenedPanel:Z

.field private mLastOrientation:I

.field private mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

.field private mMinFraction:F

.field private mOldCoverStatusBarMargin:I

.field private mPanelFraction:F

.field private mSViewCoverMargin:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBarContents:Landroid/view/ViewGroup;

.field private mSystemIcons:Landroid/view/View;

.field protected mTwoPhoneModeIcon:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldCoverStatusBarMargin:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/cover/SViewCoverLauncher;->getSViewCoverMargin(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/cover/SViewCoverLauncher;->getSViewCoverWidth(Landroid/content/Context;)F

    move-result v2

    const v3, 0x7f0706aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewCoverMargin:I

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarView_21345(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateDesktopModeVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMarqueeStatusBar()V
    .locals 7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    neg-int v3, v3

    if-ge v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v1, v2, 0x2

    neg-int v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    return-void
.end method

.method private updateScrimFraction()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float v2, v3, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    return-void
.end method

.method private updateSidePadding()V
    .locals 7

    const v6, 0x7f070685

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070684

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v5, v0, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    return-void

    :cond_0
    sget v3, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v2, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public getTwoPhoneIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarView_5949()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    :cond_0
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    if-eq v0, p1, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateMarqueeStatusBar()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07067c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSidePadding()V

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onExpandingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    const v1, 0x7f0a007c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    const v1, 0x7f0a006c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    const v1, 0x7f0a0502

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSidePadding()V

    const v1, 0x7f0a0510

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a050f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateMarqueeStatusBar()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPanelCollapsed()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onTrackingStarted()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    :cond_0
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeskMode()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateDesktopModeVisibility(Z)V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCoverMargin(IZ)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    :goto_1
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    :goto_2
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;I)I

    sparse-switch p1, :sswitch_data_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldCoverStatusBarMargin:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mOldCoverStatusBarMargin:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateMarqueeStatusBar()V

    :cond_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSViewCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentCoverStatusBarMargin:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarquee:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;->-get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$MarqueeModel;)I

    move-result v0

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_2
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setKnoxCustomStatusBarText(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f0a02cc

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextStyle()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v4

    if-lez v4, :cond_1

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    move v0, p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setVisibility(I)V

    return-void
.end method

.method public updateVisibilityAlphaSystemIcon(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->animateShow(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->animateHide(Landroid/view/View;Z)V

    goto :goto_0
.end method
