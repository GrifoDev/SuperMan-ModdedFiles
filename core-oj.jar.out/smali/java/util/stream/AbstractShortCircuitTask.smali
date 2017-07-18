.class abstract Ljava/util/stream/AbstractShortCircuitTask;
.super Ljava/util/stream/AbstractTask;
.source "AbstractShortCircuitTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TR;TK;>;"
    }
.end annotation


# instance fields
.field protected volatile canceled:Z

.field protected final sharedResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    iget-object v0, p1, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    return-void
.end method

.method protected cancelLaterNodes()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    move-object v0, p0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    if-ne v3, v0, :cond_0

    iget-object v2, v1, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/AbstractShortCircuitTask;

    iget-boolean v3, v2, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    :cond_0
    move-object v0, v1

    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public compute()V
    .locals 14

    iget-object v5, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v5}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v8

    const/4 v0, 0x0

    move-object v11, p0

    iget-object v10, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->taskCanceled()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v11}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v11, v3}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void

    :cond_1
    cmp-long v13, v6, v8

    if-lez v13, :cond_2

    invoke-interface {v5}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v11}, Ljava/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v11, v2}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    iput-object v1, v11, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    invoke-virtual {v11, v5}, Ljava/util/stream/AbstractTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;

    move-result-object v4

    check-cast v4, Ljava/util/stream/AbstractShortCircuitTask;

    iput-object v4, v11, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object v5, v2

    move-object v11, v1

    move-object v12, v4

    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v5}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v6

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    move-object v11, v4

    move-object v12, v1

    goto :goto_2
.end method

.method protected abstract getEmptyResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getLocalResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getEmptyResult()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected shortCircuit(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->sharedResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected taskCanceled()Z
    .locals 2

    iget-boolean v0, p0, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Ljava/util/stream/AbstractShortCircuitTask;->canceled:Z

    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v1

    check-cast v1, Ljava/util/stream/AbstractShortCircuitTask;

    goto :goto_0

    :cond_0
    return v0
.end method
