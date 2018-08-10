.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DcmKeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 3

    const/16 v2, 0x12cd

    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "recieve onBootCompleted via KeyguardUpdateMonitorCallback, update Shortcuts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDexModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-set0(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->onShowKeyguard()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->onShowKeyguard()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->onHideKeyguard()V

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setScreenOn(Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setScreenOn(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get9(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get9(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get7(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get7(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap2(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;J)V

    :cond_0
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->updateLayout()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    return-void
.end method
