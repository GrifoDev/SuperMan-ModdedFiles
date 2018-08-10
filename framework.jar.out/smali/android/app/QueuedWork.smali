.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x64L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static mNumWaits:I

.field private static final mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCanDelay:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sFinishers:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sProcessingWork:Ljava/lang/Object;

.field private static final sWork:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinisher(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 4

    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    :cond_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static hasPendingWork()Z
    .locals 2

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static processPendingWork()V
    .locals 9

    const-wide/16 v0, 0x0

    sget-object v6, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v7, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    sget-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v7

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    monitor-exit v6

    return-void
.end method

.method public static queue(Ljava/lang/Runnable;Z)V
    .locals 6

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    sget-boolean v1, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static removeFinisher(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static waitToFinish()V
    .locals 12

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v9, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v8, 0x0

    sput-boolean v8, Landroid/app/QueuedWork;->sCanDelay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    :try_start_1
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_0
    :try_start_2
    sget-object v9, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v8, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_2

    sput-boolean v10, Landroid/app/QueuedWork;->sCanDelay:Z

    sget-object v9, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-wide v10

    sub-long v6, v10, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_3

    :cond_1
    :goto_1
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_1
    move-exception v8

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8

    :catchall_2
    move-exception v8

    :try_start_6
    monitor-exit v9

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v8

    sput-boolean v10, Landroid/app/QueuedWork;->sCanDelay:Z

    throw v8

    :cond_2
    :try_start_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :cond_3
    :try_start_8
    sget-object v8, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    sget v8, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/app/QueuedWork;->mNumWaits:I

    sget v8, Landroid/app/QueuedWork;->mNumWaits:I

    rem-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_4

    :goto_2
    sget-object v8, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    sget-object v10, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "waited: "

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_4
    const-wide/16 v10, 0x200

    cmp-long v8, v6, v10

    if-lez v8, :cond_1

    goto :goto_2
.end method
