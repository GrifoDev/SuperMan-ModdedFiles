.class Ljava/util/TimerThread;
.super Ljava/lang/Thread;
.source "Timer.java"


# instance fields
.field newTasksMayBeScheduled:Z

.field private queue:Ljava/util/TaskQueue;


# direct methods
.method constructor <init>(Ljava/util/TaskQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    iput-object p1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    return-void
.end method

.method private mainLoop()V
    .locals 14

    const-wide/16 v12, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v10, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v10

    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_2
    :try_start_5
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object v3

    iget-object v11, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget v7, v3, Ljava/util/TimerTask;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :cond_3
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v3, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v7, v4, v0

    if-gtz v7, :cond_6

    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_7

    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v7}, Ljava/util/TaskQueue;->removeMin()V

    const/4 v7, 0x2

    iput v7, v3, Ljava/util/TimerTask;->state:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :goto_3
    :try_start_a
    monitor-exit v11

    if-nez v6, :cond_5

    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    sub-long v8, v4, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/TaskQueue;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :try_start_b
    monitor-exit v10

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/util/TimerTask;->run()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    :try_start_c
    iget-object v7, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    cmp-long v8, v8, v12

    if-gez v8, :cond_8

    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    sub-long v8, v0, v8

    :goto_4
    invoke-virtual {v7, v8, v9}, Ljava/util/TaskQueue;->rescheduleMin(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_d
    monitor-exit v11

    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    :try_start_e
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    add-long/2addr v8, v4

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Ljava/util/TimerThread;->mainLoop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    iget-object v0, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    iget-object v2, p0, Ljava/util/TimerThread;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
