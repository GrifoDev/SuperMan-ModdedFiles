.class public Lcom/sec/android/cover/sviewcover/SViewCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverView$1;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$2;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$3;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$4;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBatteryCharingText:Landroid/widget/TextView;

.field private mCurrentUiAlpha:F

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNormalContentRootView:Landroid/view/ViewGroup;

.field private mPinWindowContentRootView:Landroid/view/ViewGroup;

.field private mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

.field private mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private ensureEffectViewHidden()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideCoverUi()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SViewCoverView"

    const-string/jumbo v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const-string/jumbo v2, "SViewCoverView"

    const-string/jumbo v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUpWithReason()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    return-void

    :cond_1
    const-string/jumbo v2, "SViewCoverView"

    const-string/jumbo v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private playAnimationAndHide()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    return-void
.end method

.method private showCoverUi()V
    .locals 2

    const-string/jumbo v0, "SViewCoverView"

    const-string/jumbo v1, "showCoverUi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SViewCoverView"

    const-string/jumbo v1, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    return-void
.end method

.method private updateViewVisibleState()V
    .locals 3

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: mSViewCoverUnlockArea is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: Kids Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setShorcutsVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: Setup Wizard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: Emergency Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: In Lock Task Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: Usim Download Top Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: Sim Pin Secure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isOperatorLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "updateViewVisibleState: Operator Locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto/16 :goto_0
.end method


# virtual methods
.method protected changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardRune;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUiAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    return v0
.end method

.method public moveToMainPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->handleShow()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const-string/jumbo v0, "SViewCoverView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "white_cover_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " coverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " coverColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_PHONE_LOCK:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "lock"

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SViewCoverView"

    const-string/jumbo v2, "onCoverEvent : missing_phone_lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->playAnimationAndHide()V

    sget-boolean v1, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_NOTIFIACTION_ON_COVER:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    const-string/jumbo v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cover open, seq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mDelayedShowingSequence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showCoverUi()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    sget-boolean v1, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_NOTIFIACTION_ON_COVER:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string/jumbo v0, "SViewCoverView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    const-string/jumbo v0, "SViewCoverView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_normal:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_pin_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setBatteryTextView(Landroid/widget/TextView;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_hide_effect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    return-void
.end method

.method public onHideAnimationFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/16 v0, 0x8

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget v1, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mLastBatteryPluggedState:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_NOTIFIACTION_ON_COVER:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->cancelScreenOffTimer()V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->startScreenOffTimer()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    goto :goto_0
.end method

.method public setCoverUiAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentUiAlpha:F

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->setPreviewRootView(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public updateContentRootViewVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    goto :goto_0
.end method

.method public updateSViewCoverUnlockArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mStatusBarState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->handleShow()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->handleHide()V

    goto :goto_0
.end method
