.class Lcom/android/server/am/MARsPolicyManager$1;
.super Landroid/service/notification/NotificationListenerService;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "NotificationListenerService onListenerConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x22

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_1
    :goto_0
    monitor-exit v9

    if-nez v1, :cond_5

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_1
    monitor-exit v9

    :cond_3
    return-void

    :cond_4
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_5
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get8(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get1(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get1(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get8(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_7
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get6(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get6(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v8, 0x2710

    if-le v6, v8, :cond_8

    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v8}, Lcom/android/server/am/MARsPolicyManager;->-get6(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get4(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
