.class public Lcom/android/launcher2/utils/common/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/utils/common/ThreadPool$Worker;,
        Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;,
        Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;,
        Lcom/android/launcher2/utils/common/ThreadPool$JobContextStub;,
        Lcom/android/launcher2/utils/common/ThreadPool$JobContext;,
        Lcom/android/launcher2/utils/common/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x4

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/utils/common/ThreadPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool;->mCpuCounter:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/launcher2/utils/common/PriorityThreadFactory;

    const-string v0, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v8, v0, v2}, Lcom/android/launcher2/utils/common/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/launcher2/utils/common/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public submit(Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)Lcom/android/launcher2/utils/common/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher2/utils/common/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher2/utils/common/FutureListener",
            "<TT;>;)",
            "Lcom/android/launcher2/utils/common/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;-><init>(Lcom/android/launcher2/utils/common/ThreadPool;Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)V

    iget-object v1, p0, Lcom/android/launcher2/utils/common/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public submitUrgent(Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)Lcom/android/launcher2/utils/common/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher2/utils/common/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher2/utils/common/FutureListener",
            "<TT;>;)",
            "Lcom/android/launcher2/utils/common/Future",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/utils/common/ThreadPool;->submit(Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)Lcom/android/launcher2/utils/common/Future;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/utils/common/ThreadPool$Worker;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method
