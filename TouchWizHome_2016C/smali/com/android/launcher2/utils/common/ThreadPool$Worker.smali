.class Lcom/android/launcher2/utils/common/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher2/utils/common/Future;
.implements Lcom/android/launcher2/utils/common/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/utils/common/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/launcher2/utils/common/Future",
        "<TT;>;",
        "Lcom/android/launcher2/utils/common/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/android/launcher2/utils/common/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/utils/common/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/launcher2/utils/common/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/utils/common/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/android/launcher2/utils/common/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/utils/common/ThreadPool;Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/utils/common/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher2/utils/common/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;-><init>(Lcom/android/launcher2/utils/common/ThreadPool;Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/utils/common/ThreadPool;Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/utils/common/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher2/utils/common/FutureListener",
            "<TT;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->this$0:Lcom/android/launcher2/utils/common/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mJob:Lcom/android/launcher2/utils/common/ThreadPool$Job;

    iput-object p3, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mListener:Lcom/android/launcher2/utils/common/FutureListener;

    return-void
.end method

.method private acquireResource(Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;)Z
    .locals 1

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    const/4 v0, 0x0

    monitor-exit p0

    :goto_1
    return v0

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p1

    :try_start_1
    iget v0, p1, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;->value:I

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->this$0:Lcom/android/launcher2/utils/common/ThreadPool;

    iget-object v0, v0, Lcom/android/launcher2/utils/common/ThreadPool;->mCpuCounter:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;->value:I

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsCancelled:Z

    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mMode:I

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mJob:Lcom/android/launcher2/utils/common/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/android/launcher2/utils/common/ThreadPool$Job;->run(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->setMode(I)Z

    iput-object v1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsDone:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mListener:Lcom/android/launcher2/utils/common/FutureListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mListener:Lcom/android/launcher2/utils/common/FutureListener;

    invoke-interface {v2, p0}, Lcom/android/launcher2/utils/common/FutureListener;->onFutureDone(Lcom/android/launcher2/utils/common/Future;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized setCancelListener(Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;

    iget-boolean v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->modeToCounter(I)Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->releaseResource(Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;)V

    :cond_0
    iput v1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->modeToCounter(I)Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->acquireResource(Lcom/android/launcher2/utils/common/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    iput p1, p0, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->mMode:I

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/utils/common/ThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
