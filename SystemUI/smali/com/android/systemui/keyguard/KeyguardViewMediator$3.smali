.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


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

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBouncerPromptReason()I
    .locals 11

    const/4 v10, 0x0

    const-class v9, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v9}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v9

    if-eqz v9, :cond_0

    return v10

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v4

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v3

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    move v0, v3

    :goto_0
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    move v1, v3

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v6

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    return v9

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    and-int/lit8 v9, v6, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x2

    return v9

    :cond_4
    if-eqz v0, :cond_5

    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    return v9

    :cond_5
    if-eqz v8, :cond_6

    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_6

    const/4 v9, 0x4

    return v9

    :cond_6
    if-eqz v0, :cond_7

    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_7

    const/4 v9, 0x5

    return v9

    :cond_7
    return v10
.end method

.method public isScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZI)V
    .locals 3

    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyguardDone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap31(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set4(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardGone()V
    .locals 4

    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$2;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_keyguard_KeyguardViewMediator$3_34223()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout(Z)V

    return-void
.end method

.method public playTrustedSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap26(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set4(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap31(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public resetKeyguard()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public resetKeyguardDismissAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method
