.class public Lcom/android/server/pm/MultiTaskDealer;
.super Ljava/lang/Object;
.source "MultiTaskDealer.java"


# static fields
.field private static final DEBUG_TASK:Z = false

.field public static final PACKAGEMANAGER_SCANER:Ljava/lang/String; = "packagescan"

.field public static final TAG:Ljava/lang/String; = "MultiTaskDealer"

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/pm/MultiTaskDealer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNeedNotifyEnd:Z

.field private mObjWaitAll:Ljava/lang/Object;

.field private mTaskCount:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/MultiTaskDealer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/MultiTaskDealer;->TaskCompleteNotify(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/MultiTaskDealer;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    iput-boolean v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v9, p1

    new-instance v8, Lcom/android/server/pm/MultiTaskDealer$1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/MultiTaskDealer$1;-><init>(Lcom/android/server/pm/MultiTaskDealer;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/MultiTaskDealer$2;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/MultiTaskDealer$2;-><init>(Lcom/android/server/pm/MultiTaskDealer;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private TaskCompleteNotify(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDealer(Ljava/lang/String;)Lcom/android/server/pm/MultiTaskDealer;
    .locals 3

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/pm/MultiTaskDealer;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/MultiTaskDealer;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public static startDealer(Ljava/lang/String;I)Lcom/android/server/pm/MultiTaskDealer;
    .locals 3

    invoke-static {p0}, Lcom/android/server/pm/MultiTaskDealer;->getDealer(Ljava/lang/String;)Lcom/android/server/pm/MultiTaskDealer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/MultiTaskDealer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/MultiTaskDealer;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/android/server/pm/MultiTaskDealer;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public startLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public waitAll()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
