.class abstract Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractChainingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;TF;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->function:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final done()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->maybePropagateCancellation(Ljava/util/concurrent/Future;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->function:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->function:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->isCancelled()Z

    move-result v8

    if-nez v2, :cond_0

    move v7, v5

    :goto_0
    or-int/2addr v7, v8

    if-nez v1, :cond_1

    :goto_1
    or-int/2addr v5, v7

    if-eqz v5, :cond_2

    :goto_2
    return-void

    :cond_0
    move v7, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->function:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    invoke-virtual {p0, v1, v3}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->cancel(Z)Z
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/Futures$AbstractChainingFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2
.end method
