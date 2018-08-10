.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImpl;->-get0(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v1

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_1
    if-eqz v1, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :pswitch_2
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v4, :cond_2

    const-string/jumbo v0, "android.os.action.CHARGING"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    monitor-exit v5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "android.os.action.DISCHARGING"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_3
    sget v5, Lcom/android/internal/os/BatteryStatsImpl;->mLastUid:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    sget v7, Lcom/android/internal/os/BatteryStatsImpl;->mLastUid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuUpdateLocked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
