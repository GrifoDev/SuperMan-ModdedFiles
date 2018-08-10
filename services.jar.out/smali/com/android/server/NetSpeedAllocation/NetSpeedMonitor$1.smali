.class Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "NetSpeedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "NetSpeedMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onForegroundActivitiesChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",foregroundActivities:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x4

    invoke-static {v3, v4, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistNONetworkBandwidth(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NetSpeedMonitor"

    const-string/jumbo v3, "onForegroundActivitiesChanged: Foreground whiteList"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/os/Message;->arg1:I

    :goto_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get2(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p3, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-wrap0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v2

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistNONetworkBandwidth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    monitor-exit v2

    return-void

    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onProcessDied(II)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get2(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get0(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get1(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
