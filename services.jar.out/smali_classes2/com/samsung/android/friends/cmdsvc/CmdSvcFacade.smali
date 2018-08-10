.class public Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;
.super Ljava/lang/Object;
.source "CmdSvcFacade.java"


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
.field private static final WAIT_TIMEOUT:I = 0x7d0


# instance fields
.field private final mBlockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mCompleted:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_1

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v2, :cond_2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_1
    throw v1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method synthetic lambda$-com_samsung_android_friends_cmdsvc_CmdSvcFacade_1885(Ljava/lang/Thread;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public perform(Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/samsung/android/friends/cmdsvc/CmdSvc;",
            ">;)TT;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;

    invoke-direct {v8, p0, v3}, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v4, v6}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    if-eqz v5, :cond_5

    throw v5

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    if-eqz v5, :cond_4

    throw v5

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v4

    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    return-object v1

    :catchall_1
    move-exception v4

    goto :goto_2
.end method
