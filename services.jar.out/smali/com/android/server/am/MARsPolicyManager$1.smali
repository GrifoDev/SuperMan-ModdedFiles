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
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x22

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get5(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get8(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v4

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get5(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get8(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v4

    :cond_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get2(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get9(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get1(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get1(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get9(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get5(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2710

    if-le v2, v3, :cond_5

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->-get7(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get5(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get8(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$1;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get8(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
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
