.class Lcom/android/server/usage/UsageStatsService$1;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-wrap1(Lcom/android/server/usage/UsageStatsService;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-get2(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-get1(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
