.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BiometricUnlockController.java"


# instance fields
.field private mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

.field private mBouncer:Z

.field private mContext:Landroid/content/Context;

.field private mOccludedWithDeviceInteractive:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private isUpdatePossible(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareViewAttribution()V
    .locals 6

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8b4

    const v4, 0x1000118

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    :cond_1
    return-void
.end method

.method private sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "102"

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "101"

    goto :goto_0
.end method

.method private updateBackgroundAuthToast(ZZI)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BiometricController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update biometric toast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->prepareViewAttribution()V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "Already unlocked by biometric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "Biometric toast already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0064

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->dismiss(Z)V

    :cond_5
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    goto :goto_0
.end method


# virtual methods
.method public onFaceRecognitionAuthSucceeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    const-string/jumbo v0, "1032"

    const-string/jumbo v1, "4"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    const-string/jumbo v0, "1033"

    const-string/jumbo v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "1032"

    const-string/jumbo v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    sget-object v1, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    :cond_0
    return-void
.end method

.method public onIBAuthenticated(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    const-string/jumbo v0, "1032"

    const-string/jumbo v1, "5"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setBiometricUnlocked(Z)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "PPP should be authenticated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    const-string/jumbo v0, "1032"

    const-string/jumbo v1, "3"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZI)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "hide toast - onKeyguardVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZI)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOccludedWithDeviceInteractive:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOccludedWithDeviceInteractive:Z

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "add toast view by FP - onKeyguardVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZI)V

    goto :goto_0
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZZI)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZI)V

    :cond_0
    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "dismiss biometric toast by cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZI)V

    :cond_0
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public showBackgroundAuthToast(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BiometricController"

    const-string/jumbo v1, "Biometric toast already showing - showBackgroundAuthToast()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->show(JI)V

    :cond_1
    return-void
.end method

.method public updateBackgroundAuthToast(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(ZZI)V

    return-void
.end method
