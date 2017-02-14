.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CANCELLED:I = 0x3

.field static final EXECUTED:I = 0x2

.field static final SCHEDULED:I = 0x1

.field static final VIRGIN:I


# instance fields
.field final lock:Ljava/lang/Object;

.field nextExecutionTime:J

.field period:J

.field state:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TimerTask;->state:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/TimerTask;->period:J

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Ljava/util/TimerTask;->state:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Ljava/util/TimerTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 6

    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v0, p0, Ljava/util/TimerTask;->period:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iget-wide v0, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-wide v4, p0, Ljava/util/TimerTask;->period:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v4

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-wide v4, p0, Ljava/util/TimerTask;->period:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
