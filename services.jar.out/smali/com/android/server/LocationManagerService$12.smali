.class Lcom/android/server/LocationManagerService$12;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeMinorSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->-set3(Lcom/android/server/LocationManagerService;Z)Z

    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "Minor session starts."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get17(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v4, "network"

    iget-object v5, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->-get7(Lcom/android/server/LocationManagerService;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/LocationManagerService;->-wrap1(Lcom/android/server/LocationManagerService;Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/LocationManagerService;->-set2(Lcom/android/server/LocationManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get12(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get13(Lcom/android/server/LocationManagerService;)Landroid/location/LocationRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$CiqLocationListener;

    move-result-object v3

    const-string/jumbo v4, "LocationManagerService"

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/server/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get16(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get16(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get16(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v1

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "Handler has not created yet "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "User disabled Network Location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService$12;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->sendEmptyCIQDataForNonGPSProvider()V

    goto :goto_0
.end method
