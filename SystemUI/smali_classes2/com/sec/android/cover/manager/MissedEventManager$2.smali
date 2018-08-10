.class Lcom/sec/android/cover/manager/MissedEventManager$2;
.super Landroid/os/Handler;
.source "MissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/MissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/MissedEventManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/MissedEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get2()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-get2(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)I

    move-result v0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;->onMissedCallsCountChanged(IIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "No listener"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get2()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get2(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;->onUnreadMessagesCountChanged(IIZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "No listener"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get2()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$2;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get2(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;->onUnreadMessagesCountChanged(IIZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_5
    invoke-static {}, Lcom/sec/android/cover/manager/MissedEventManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "No listener"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
