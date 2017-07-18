.class public Ljava/lang/ref/ReferenceQueue;
.super Ljava/lang/Object;
.source "ReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sQueueNextUnenqueued:Ljava/lang/ref/Reference;

.field public static unenqueued:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private head:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private tail:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/PhantomReference;

    invoke-direct {v0, v1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    sput-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    return-void
.end method

.method static add(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    const-class v2, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v1, :cond_0

    sput-object p0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    :goto_0
    const-class v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    :goto_1
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-eq v1, v3, :cond_1

    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_1

    :cond_1
    iput-object p0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    move-object v0, p0

    :goto_2
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-eq v1, p0, :cond_2

    iget-object v0, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_2

    :cond_2
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    iput-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private enqueueLocked(Ljava/lang/ref/Reference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    instance-of v1, p1, Lsun/misc/Cleaner;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v1, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    return v2

    :cond_1
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-nez v1, :cond_2

    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    :goto_0
    iput-object p1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    return v2

    :cond_2
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object p1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    goto :goto_0
.end method

.method public static enqueuePending(Ljava/lang/ref/Reference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    move-object v2, p0

    :cond_0
    iget-object v1, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v1, :cond_1

    iget-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    move-object p0, v0

    :goto_0
    if-ne p0, v2, :cond_0

    return-void

    :cond_1
    iget-object v4, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v4

    :cond_2
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object p0, p0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    invoke-direct {v1, p0}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    move-object p0, v0

    if-eq v0, v2, :cond_3

    iget-object v3, v0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eq v3, v1, :cond_2

    :cond_3
    iget-object v3, v1, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private reallyPollLocked()Ljava/lang/ref/Reference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v2, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    if-ne v1, v2, :cond_0

    iput-object v3, p0, Ljava/lang/ref/ReferenceQueue;->tail:Ljava/lang/ref/Reference;

    iput-object v3, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    :goto_0
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;

    iput-object v1, v0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    iget-object v1, v1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    iput-object v1, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method enqueue(Ljava/lang/ref/Reference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/ref/ReferenceQueue;->enqueueLocked(Ljava/lang/ref/Reference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isEnqueued(Ljava/lang/ref/Reference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<+TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_0

    iget-object v2, p1, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    sget-object v3, Ljava/lang/ref/ReferenceQueue;->sQueueNextUnenqueued:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public poll()Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/ReferenceQueue;->head:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove()Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public remove(J)Ljava/lang/ref/Reference;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Negative timeout value"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v6, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    monitor-exit v6

    return-object v2

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-nez v3, :cond_3

    const-wide/16 v4, 0x0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v3, p0, Ljava/lang/ref/ReferenceQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;->reallyPollLocked()Ljava/lang/ref/Reference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_4

    monitor-exit v6

    return-object v2

    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v8, v0, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr p1, v8

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-gtz v3, :cond_5

    const/4 v3, 0x0

    monitor-exit v6

    return-object v3

    :cond_5
    move-wide v4, v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method
