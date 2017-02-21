.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask",
        "<TT;>;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v5}, Landroid/accounts/AccountManager;->-wrap1(Landroid/accounts/AccountManager;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    return-object v5

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p2}, Landroid/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    return-object v5

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    throw v5

    :cond_2
    :try_start_3
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v5, :cond_3

    new-instance v5, Landroid/accounts/AuthenticatorException;

    invoke-direct {v5, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_3
    instance-of v5, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v5, :cond_4

    check-cast v0, Landroid/accounts/AuthenticatorException;

    throw v0

    :cond_4
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5
    instance-of v5, v0, Ljava/lang/Error;

    if-eqz v5, :cond_6

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v2

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    :goto_0
    new-instance v5, Landroid/accounts/OperationCanceledException;

    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v5

    :catch_2
    move-exception v4

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_0
.end method


# virtual methods
.method protected done()V
    .locals 1

    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public start()Landroid/accounts/AccountManager$Future2Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->startTask()V

    return-object p0
.end method
