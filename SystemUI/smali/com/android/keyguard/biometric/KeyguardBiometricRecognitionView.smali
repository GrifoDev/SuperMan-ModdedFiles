.class public Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;
.super Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.source "KeyguardBiometricRecognitionView.java"


# instance fields
.field private mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

.field private mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onFinishInflate()V

    const-string/jumbo v0, "KeyguardBiometricRecognitionIcon"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0251

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateVisualCueIcon()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconDrawable(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    return-void
.end method

.method protected updateErrorText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateHelpText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateIconVisibility()V
    .locals 4

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconDrawable(I)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRetryTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateVisualCueIcon()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mProgressCircle:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "smart_scan_unlocking_ic_whitebg.json"

    :goto_0
    invoke-virtual {v5, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070219

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBouncerShowing:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "smart_scan_unlocking_ic.json"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    const-string/jumbo v2, "face_unlocking_ic_whitebg.json"

    :goto_3
    invoke-virtual {v5, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "face_unlocking_ic.json"

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_5

    const-string/jumbo v2, "iris_unlocking_ic_whitebg.json"

    :goto_4
    invoke-virtual {v5, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "iris_unlocking_ic.json"

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_2
.end method
