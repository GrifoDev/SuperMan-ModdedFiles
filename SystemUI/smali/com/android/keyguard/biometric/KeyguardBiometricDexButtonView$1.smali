.class Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricDexButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    goto :goto_0
.end method

.method public onDexModeChanged(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDexModeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1204d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1204ea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120521

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120525

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 3

    const/16 v2, -0x9

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120549

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f12055f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_0
    return-void
.end method
