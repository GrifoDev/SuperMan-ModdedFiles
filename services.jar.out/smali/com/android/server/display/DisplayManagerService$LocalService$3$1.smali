.class Lcom/android/server/display/DisplayManagerService$LocalService$3$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService$LocalService$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get8(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get0(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v1

    const-string/jumbo v3, "mRequestDisplayStateRunnable is running now. "

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService;->-set3(Lcom/android/server/display/DisplayManagerService;Z)Z

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get2(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;->this$2:Lcom/android/server/display/DisplayManagerService$LocalService$3;

    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get1(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/server/display/DisplayManagerService$LocalService$3;->-wrap0(Lcom/android/server/display/DisplayManagerService$LocalService$3;II)V

    const-string/jumbo v1, "DisplayManagerInternal.requestDesiredDisplayState"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
