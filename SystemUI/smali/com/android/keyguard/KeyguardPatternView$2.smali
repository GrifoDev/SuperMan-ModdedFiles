.class Lcom/android/keyguard/KeyguardPatternView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 8

    const-string/jumbo v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBiometricsLockoutChanged( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get5(Lcom/android/keyguard/KeyguardPatternView;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    if-eqz v0, :cond_1

    rem-int/lit8 v4, v0, 0x5

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get15(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    const/16 v5, 0x7530

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4, v2, v3}, Lcom/android/keyguard/KeyguardPatternView;->-wrap4(Lcom/android/keyguard/KeyguardPatternView;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "SecurityPatternView"

    const-string/jumbo v5, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDexModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-wrap7(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get1(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-wrap2(Lcom/android/keyguard/KeyguardPatternView;)V

    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-set2(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get1(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-wrap2(Lcom/android/keyguard/KeyguardPatternView;)V

    :cond_0
    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    :cond_0
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get11(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-wrap8(Lcom/android/keyguard/KeyguardPatternView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->-wrap8(Lcom/android/keyguard/KeyguardPatternView;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get1(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-wrap2(Lcom/android/keyguard/KeyguardPatternView;)V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get1(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardPatternView;->-set0(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-set2(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get15(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0
.end method
