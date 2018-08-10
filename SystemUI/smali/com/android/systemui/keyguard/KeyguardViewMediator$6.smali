.class Lcom/android/systemui/keyguard/KeyguardViewMediator$6;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


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

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "seq"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDelayedShowingSequence = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingDream()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ATT_LOCK_TIMEOUT:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap30(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v6

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "seq"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap22(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_6
    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set7(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_7
    const-string/jumbo v5, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout()V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricsOptionState(I)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received ACTION_FMM_LOCKED with mLockPatternUtils.isFMMLockEnabled() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap30(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v5, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "received ACTION_FMM_UNLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_3

    :cond_c
    const-string/jumbo v5, "com.samsung.pen.INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "penInsert"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_PEN_INSERT intent is received. penInsert="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "ACTION_CARRIER_LOCK_SUBSCRIBE intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLockPlus(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap30(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_4

    :cond_f
    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "Carrier Lock isn\'t enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v5, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "ACTION_CARRIER_LOCK_CANCEL intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLockPlus(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v7, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_5

    :cond_12
    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "Carrier Lock is enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
