.class Lcom/android/server/BatteryService$6;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x1

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "/sys/class/power_supply/battery/fg_asoc"

    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->-wrap3(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ASOC is not supported."

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "/efs/FactoryApp/asoc"

    const-wide/16 v6, -0x1

    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->-wrap1(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->-set8(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get24(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get24(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->-set8(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get24(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->-wrap1(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get24(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get24(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->-set8(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get24(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->-wrap1(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
