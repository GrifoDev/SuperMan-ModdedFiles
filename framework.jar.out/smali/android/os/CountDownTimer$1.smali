.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object v9, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v8}, Landroid/os/CountDownTimer;->-get0(Landroid/os/CountDownTimer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    monitor-exit v9

    return-void

    :cond_0
    :try_start_1
    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v8}, Landroid/os/CountDownTimer;->-get2(Landroid/os/CountDownTimer;)J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v6, v10, v12

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_1

    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v8}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v9

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v8, v6, v7}, Landroid/os/CountDownTimer;->onTick(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v2, v10, v4

    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v8}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-gez v8, :cond_3

    sub-long v0, v6, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v0, v10

    if-gez v8, :cond_2

    const-wide/16 v0, 0x0

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8, v0, v1}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_3
    :try_start_3
    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v8}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v10

    sub-long v0, v10, v2

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v8, v0, v10

    if-gez v8, :cond_2

    iget-object v8, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v8}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    add-long/2addr v0, v10

    goto :goto_1
.end method
