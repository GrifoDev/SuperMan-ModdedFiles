.class Lcom/android/server/BatteryService$3;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get18(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    int-to-long v0, v4

    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    sub-long v2, v6, v0

    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "!@[BatteryInfo] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->-get14(Lcom/android/server/BatteryService;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4, v0, v1}, Lcom/android/server/BatteryService;->-set4(Lcom/android/server/BatteryService;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    iget-object v6, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v6}, Lcom/android/server/BatteryService;->-wrap6(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService;->-set11(Lcom/android/server/BatteryService;J)J

    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v6, "/efs/FactoryApp/batt_discharge_level"

    iget-object v7, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->-get27(Lcom/android/server/BatteryService;)J

    move-result-wide v8

    invoke-static {v4, v6, v8, v9}, Lcom/android/server/BatteryService;->-wrap1(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v6, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v7, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->-get27(Lcom/android/server/BatteryService;)J

    move-result-wide v8

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    invoke-static {v4, v6, v8, v9}, Lcom/android/server/BatteryService;->-wrap1(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method
