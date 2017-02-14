.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v11

    :try_start_0
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v12, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)I

    move-result v12

    if-ne v10, v12, :cond_1

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v11

    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x18

    if-ne v10, v11, :cond_2

    const-string/jumbo v10, "Failed to find a new network - expiring NetTransition Wakelock"

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NetTransition Wakelock ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_3

    const-string/jumbo v1, "unknown"

    :cond_3
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " cleared because we found a replacement network"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v5, v2}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;IZ)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/ProxyInfo;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v10, "newProxy"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyInfo;

    const-string/jumbo v10, "oldProxy"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/ProxyInfo;

    if-eqz v7, :cond_5

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v6}, Lcom/android/server/ConnectivityService;->-set1(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    :cond_5
    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, v6}, Lcom/android/server/ConnectivityService;->-set0(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Messenger;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10, p1}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/app/PendingIntent;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-static {v11, v10, v12}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkRequest;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-static {v11, v10, v12}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v13, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/Network;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    iget v12, p1, Landroid/os/Message;->arg2:I

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-static {v13, v10, v11, v12}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    :sswitch_d
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/Network;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/Network;

    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v10

    invoke-virtual {v10, v3, v9, v8}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x15 -> :sswitch_8
        0x16 -> :sswitch_b
        0x17 -> :sswitch_6
        0x18 -> :sswitch_0
        0x19 -> :sswitch_11
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
        0x1c -> :sswitch_c
        0x1d -> :sswitch_d
        0x1e -> :sswitch_e
        0x1f -> :sswitch_9
        0x64 -> :sswitch_4
        0x8100b -> :sswitch_f
        0x8100c -> :sswitch_10
    .end sparse-switch
.end method
