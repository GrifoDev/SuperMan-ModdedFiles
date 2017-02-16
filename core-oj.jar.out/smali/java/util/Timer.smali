.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$1;
    }
.end annotation


# static fields
.field private static final nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final queue:Ljava/util/TaskQueue;

.field private final thread:Ljava/util/TimerThread;

.field private final threadReaper:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/util/Timer;)Ljava/util/TaskQueue;
    .locals 1

    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Timer;)Ljava/util/TimerThread;
    .locals 1

    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/TaskQueue;

    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    .line 101
    new-instance v0, Ljava/util/TimerThread;

    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-direct {v0, v1}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    iput-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    .line 110
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->threadReaper:Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v0, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v0}, Ljava/util/TimerThread;->start()V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/TaskQueue;

    invoke-direct {v0}, Ljava/util/TaskQueue;-><init>()V

    iput-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    .line 101
    new-instance v0, Ljava/util/TimerThread;

    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-direct {v0, v1}, Ljava/util/TimerThread;-><init>(Ljava/util/TaskQueue;)V

    iput-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    .line 110
    new-instance v0, Ljava/util/Timer$1;

    invoke-direct {v0, p0}, Ljava/util/Timer$1;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Ljava/util/Timer;->threadReaper:Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v0, p1}, Ljava/util/TimerThread;->setName(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v0, p2}, Ljava/util/TimerThread;->setDaemon(Z)V

    .line 176
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    invoke-virtual {v0}, Ljava/util/TimerThread;->start()V

    .line 173
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isDaemon"    # Z

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->serialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method private sched(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # J
    .param p4, "period"    # J

    .prologue
    const/4 v4, 0x1

    .line 387
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal execution time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 393
    shr-long/2addr p4, v4

    .line 395
    :cond_1
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    iget-boolean v0, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    if-nez v0, :cond_2

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Timer already cancelled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 399
    :cond_2
    :try_start_1
    iget-object v2, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :try_start_2
    iget v0, p1, Ljava/util/TimerTask;->state:I

    if-eqz v0, :cond_3

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 402
    const-string/jumbo v3, "Task already scheduled or cancelled"

    .line 401
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    :cond_3
    :try_start_4
    iput-wide p2, p1, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 404
    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    .line 405
    const/4 v0, 0x1

    iput v0, p1, Ljava/util/TimerTask;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v2

    .line 408
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0, p1}, Ljava/util/TaskQueue;->add(Ljava/util/TimerTask;)V

    .line 409
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->getMin()Ljava/util/TimerTask;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 410
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    monitor-exit v1

    .line 386
    return-void
.end method

.method private static serialNumber()I
    .locals 1

    .prologue
    .line 124
    sget-object v0, Ljava/util/Timer;->nextSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer;->thread:Ljava/util/TimerThread;

    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    .line 431
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->clear()V

    .line 432
    iget-object v0, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 428
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public purge()I
    .locals 5

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 459
    .local v1, "result":I
    iget-object v3, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    monitor-enter v3

    .line 460
    :try_start_0
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 461
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2, v0}, Ljava/util/TaskQueue;->get(I)Ljava/util/TimerTask;

    move-result-object v2

    iget v2, v2, Ljava/util/TimerTask;->state:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 462
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2, v0}, Ljava/util/TaskQueue;->quickRemove(I)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    .line 460
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 467
    :cond_1
    if-eqz v1, :cond_2

    .line 468
    iget-object v2, p0, Ljava/util/Timer;->queue:Ljava/util/TaskQueue;

    invoke-virtual {v2}, Ljava/util/TaskQueue;->heapify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 471
    return v1

    .line 459
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 191
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative delay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 190
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 244
    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative delay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    cmp-long v0, p4, v2

    if-gtz v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p2

    neg-long v4, p4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 243
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    .line 208
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 207
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    .line 285
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    neg-long v4, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 284
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .locals 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 324
    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative delay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    cmp-long v0, p4, v2

    if-gtz v0, :cond_1

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 323
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    .line 368
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive period."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/Timer;->sched(Ljava/util/TimerTask;JJ)V

    .line 367
    return-void
.end method
