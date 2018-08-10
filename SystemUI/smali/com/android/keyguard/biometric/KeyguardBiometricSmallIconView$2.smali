.class Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricSmallIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    goto :goto_0
.end method

.method public onDexModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120551

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    goto :goto_0
.end method

.method public onIBAuthFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120551

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    return-void
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    goto :goto_0
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    goto :goto_0
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 2

    const/16 v0, -0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    goto :goto_0
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-set0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    if-nez p1, :cond_2

    const-string/jumbo v0, "KeyguardBiometricSmallIconView"

    const-string/jumbo v1, "set text preview - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-set1(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-get4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->-wrap4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    return-void
.end method
