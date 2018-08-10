.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    return-void
.end method

.method public onDexModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    return-void
.end method

.method public onFaceRecognitionAcquired(I)V
    .locals 0

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .locals 0

    return-void
.end method

.method public onFaceRecognitionAuthSucceeded(I)V
    .locals 0

    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onFaceRecognitionHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 0

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 0

    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 0

    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0

    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public onFotaPreinstallerFinish()V
    .locals 0

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIBAuthFailed()V
    .locals 0

    return-void
.end method

.method public onIBAuthenticated(I)V
    .locals 0

    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onICCCardStateChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIrisAuthFailed()V
    .locals 0

    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 0

    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeChangeStarted()V
    .locals 0

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 0

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    return-void
.end method

.method public onRemoteLockInfoChanged()V
    .locals 0

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onSecurityModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 0

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 0

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    return-void
.end method

.method public onUpdateAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 0

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    return-void
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    return-void
.end method

.method public showBackgroundAuthToast(I)V
    .locals 0

    return-void
.end method

.method public updateBackgroundAuthToast(ZI)V
    .locals 0

    return-void
.end method
