.class public Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;,
        Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;
    }
.end annotation


# instance fields
.field protected mBouncerShowing:Z

.field protected mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field protected mState:I

.field protected final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    cmpl-float v1, p3, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected getIconState()I
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingFaceRecognitionRetry()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIrisRetryButton()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIBRetryButton()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x2

    return v0

    :cond_5
    return v2
.end method

.method protected isBiometricRetryIconSelected(Landroid/view/View;FF)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected updateErrorText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected updateHelpText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected updateIconDrawable(I)V
    .locals 0

    return-void
.end method

.method protected updateIconVisibility()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconDrawable(I)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updateVisualCueIcon()V
    .locals 0

    return-void
.end method
