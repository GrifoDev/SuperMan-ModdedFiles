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
    .param p1, "this$0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 114
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    .line 119
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v7

    .line 120
    :try_start_0
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v6}, Landroid/os/CountDownTimer;->-get0(Landroid/os/CountDownTimer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v7

    .line 121
    return-void

    .line 124
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v6}, Landroid/os/CountDownTimer;->-get2(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 126
    .local v4, "millisLeft":J
    cmp-long v6, v4, v12

    if-gtz v6, :cond_1

    .line 127
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v7

    .line 117
    return-void

    .line 128
    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v6}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-gez v6, :cond_2

    .line 130
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    .end local v4    # "millisLeft":J
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 132
    .restart local v4    # "millisLeft":J
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 133
    .local v2, "lastTickStart":J
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v6, v4, v5}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 136
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v6}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 140
    .local v0, "delay":J
    :goto_1
    cmp-long v6, v0, v12

    if-gez v6, :cond_3

    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v6}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_1

    .line 142
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v1}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
