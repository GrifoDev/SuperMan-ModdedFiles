.class final Lcom/android/systemui/media/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/media/NotificationPlayer;->-get9(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get2(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get2(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/NotificationPlayer$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get2(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get2(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/systemui/media/NotificationPlayer;->-set4(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-wrap0(Lcom/android/systemui/media/NotificationPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1, v0}, Lcom/android/systemui/media/NotificationPlayer;->-wrap1(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get7(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long v2, v4, v6

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get9(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification stop delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get7(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get7(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1, v8}, Lcom/android/systemui/media/NotificationPlayer;->-set3(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get8(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get0(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get0(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/android/systemui/media/NotificationPlayer;->-set0(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v4

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get3(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get4(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get4(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get4(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->-get9(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "STOP command without a player"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v4

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
