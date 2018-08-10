.class public Lcom/samsung/android/friends/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/action/ActionDispatcher$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionDispatcher"


# instance fields
.field private volatile mAcceptable:Z

.field private final mAccessMgr:Lcom/samsung/android/friends/executable/ExecAccessMgr;

.field private mDefault:Lcom/samsung/android/friends/action/ActionExecutable;

.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/friends/action/ActionExecutable;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/samsung/android/friends/common/Logger;

.field private final mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/friends/executable/ExecAccessMgr;Lcom/samsung/android/friends/common/Logger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAccessMgr:Lcom/samsung/android/friends/executable/ExecAccessMgr;

    iput-object p2, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAcceptable:Z

    return-void
.end method

.method private getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public varargs add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    iget-object v3, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAcceptable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mLogger:Lcom/samsung/android/friends/common/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string/jumbo v3, "ActionDispatcher"

    const-string/jumbo v5, "skipped action 0x%x - not ready"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v6, v12

    invoke-static {v3, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v10, v11, v3, v5}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v8, 0x0

    const-string/jumbo v0, "ActionDispatcher"

    const-string/jumbo v3, "execute 0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v0, v3, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAccessMgr:Lcom/samsung/android/friends/executable/ExecAccessMgr;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isAccessible(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Not accessible"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    instance-of v0, v7, Landroid/os/RemoteException;

    if-nez v0, :cond_1

    instance-of v0, v7, Ljava/lang/SecurityException;

    if-eqz v0, :cond_6

    :cond_1
    throw v7

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mDefault:Lcom/samsung/android/friends/action/ActionExecutable;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/friends/action/ActionExecutable;

    if-eqz p2, :cond_3

    const-string/jumbo v0, "sysSvcVer"

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2, p2, v4, p1}, Lcom/samsung/android/friends/action/ActionExecutable;->preExecute(Landroid/os/Bundle;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2, p1}, Lcom/samsung/android/friends/action/ActionExecutable;->executeOnSameThread(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2, p2, v4, p1}, Lcom/samsung/android/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    move-result-object v8

    :cond_4
    :goto_0
    return-object v8

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/friends/action/ActionDispatcher;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v0, Lcom/samsung/android/friends/action/ActionDispatcher$Task;

    const/4 v6, 0x0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/friends/action/ActionDispatcher$Task;-><init>(ILcom/samsung/android/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/samsung/android/friends/action/ActionDispatcher$Task;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v0, "ActionDispatcher"

    const-string/jumbo v3, "submit task[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-static {v0, v3, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    invoke-static {v7}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAcceptable(Z)Lcom/samsung/android/friends/action/ActionDispatcher;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mAcceptable:Z

    return-object p0
.end method

.method public setDefault(Lcom/samsung/android/friends/action/ActionExecutable;)Lcom/samsung/android/friends/action/ActionDispatcher;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/friends/action/ActionDispatcher;->mDefault:Lcom/samsung/android/friends/action/ActionExecutable;

    return-object p0
.end method
