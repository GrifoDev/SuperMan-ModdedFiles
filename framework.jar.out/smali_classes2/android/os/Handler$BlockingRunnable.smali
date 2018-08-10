.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_0

    return v8

    :cond_0
    monitor-enter p0

    cmp-long v3, p2, v10

    if-lez v3, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v4, v6, p2

    :goto_0
    iget-boolean v3, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    sub-long v0, v4, v6

    cmp-long v3, v0, v10

    if-gtz v3, :cond_1

    monitor-exit p0

    return v8

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler$BlockingRunnable;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    :try_start_3
    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_3
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
