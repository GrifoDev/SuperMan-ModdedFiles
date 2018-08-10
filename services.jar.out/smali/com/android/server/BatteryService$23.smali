.class Lcom/android/server/BatteryService$23;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get20(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap3(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set9(Lcom/android/server/BatteryService;J)J

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SW_ASOC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get26(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "/efs/FactoryApp/asoc"

    const-wide/16 v4, 0x64

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    const-string/jumbo v0, "/sys/class/power_supply/battery/fg_asoc"

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-wrap10(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap7(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set12(Lcom/android/server/BatteryService;J)J

    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v3, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get29(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap5(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set10(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap6(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set11(Lcom/android/server/BatteryService;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "/sys/class/power_supply/battery/fg_asoc"

    iget-object v2, p0, Lcom/android/server/BatteryService$23;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get26(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-wrap10(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
