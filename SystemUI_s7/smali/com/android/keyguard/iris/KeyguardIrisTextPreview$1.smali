.class Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisTextPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 3

    const/16 v1, -0x9

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFristScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

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

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFristScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    :cond_0
    return-void
.end method
