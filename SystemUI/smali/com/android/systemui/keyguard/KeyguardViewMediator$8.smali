.class Lcom/android/systemui/keyguard/KeyguardViewMediator$8;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v2, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "keyguardGoingAway"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->keyguardGoingAway()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_ANIMATION_ON_WAKE_AND_UNLOCK:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_ANIMATION_ON_WAKE_AND_UNLOCK:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToNotificationShade()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x1

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBiometricUnlocked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintAuthenticated(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    or-int/lit16 v1, v1, 0x100

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Error while calling WindowManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
