.class public Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method protected constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onEdgeNotificationPosted(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error running onInterruptionFilterChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/NotificationListenerService;->-set0(Landroid/service/notification/NotificationListenerService;Z)Z

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onListenerHintsChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 8

    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/service/notification/NotificationListenerService;->-wrap0(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V

    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/service/notification/NotificationListenerService;->-wrap1(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v4, p2}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v5

    return-void

    :catch_0
    move-exception v1

    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onNotificationPosted: Error receiving StatusBarNotification"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v2

    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v4}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v6}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v4, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v2}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;I)V
    .locals 6

    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get3(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3, p2}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get4(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get2(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService;->-get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
