.class abstract Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.super Lcom/google/common/util/concurrent/AggregateFutureState;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RunningState"
.end annotation


# instance fields
.field private final allMustSucceed:Z

.field private final collectsValues:Z

.field private futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TInputT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/AggregateFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TInputT;>;>;ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;-><init>(I)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    iput-boolean p4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;ILjava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleOneInputDone(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->decrementCountAndMaybeComplete()V

    return-void
.end method

.method private decrementCountAndMaybeComplete()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->decrementRemainingAndGet()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->processCompleted()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 6

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v3, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    :cond_0
    :goto_0
    instance-of v4, p1, Ljava/lang/Error;

    iget-boolean v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    and-int/2addr v3, v5

    and-int/2addr v3, v1

    or-int/2addr v3, v4

    if-eqz v3, :cond_1

    instance-of v3, p1, Ljava/lang/Error;

    if-eqz v3, :cond_4

    const-string v2, "Input Future failed with Error"

    :goto_2
    invoke-static {}, Lcom/google/common/util/concurrent/AggregateFuture;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->getOrInitSeenExceptions()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v2, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_2
.end method

.method private handleOneInputDone(ILjava/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TInputT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AggregateFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-string v4, "Future was done before all dependencies completed"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    const-string v4, "Tried to set value from future which is not done"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/AggregateFuture;->access$601(Lcom/google/common/util/concurrent/AggregateFuture;Z)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    invoke-virtual {p0, v3, p1, v1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectOneValue(ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, p1, v4}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectOneValue(ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private init()V
    .locals 7

    iget-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleAllCompleted()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v1, v0, 0x1

    move v3, v0

    new-instance v5, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;-><init>(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1
.end method

.method private processCompleted()V
    .locals 6

    iget-boolean v5, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->collectsValues:Z

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->allMustSucceed:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleOneInputDone(ILjava/util/concurrent/Future;)V

    move v0, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->handleAllCompleted()V

    return-void
.end method


# virtual methods
.method final addInitialException(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->this$0:Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AggregateFuture;->trustedGetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method abstract collectOneValue(ZILjava/lang/Object;)V
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method abstract handleAllCompleted()V
.end method

.method interruptTask()V
    .locals 0

    return-void
.end method

.method releaseResourcesAfterFailure()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->futures:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method

.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->decrementCountAndMaybeComplete()V

    return-void
.end method
