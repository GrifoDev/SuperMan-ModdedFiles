.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_7
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_9
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_a
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_b
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_1

    :goto_2
    invoke-static {v4, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :pswitch_d
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_e
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap20(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onSucccessfulUnlock()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Timeout while waiting for activity drawn!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_13
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP_WITH_REASON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :pswitch_14
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage SET_SWITCHING_USER"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto :goto_3

    :pswitch_15
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_14
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method
