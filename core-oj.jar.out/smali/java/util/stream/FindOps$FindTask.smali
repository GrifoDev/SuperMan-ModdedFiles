.class final Ljava/util/stream/FindOps$FindTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;TO;",
        "Ljava/util/stream/FindOps$FindTask",
        "<TP_IN;TP_OUT;TO;>;>;"
    }
.end annotation


# instance fields
.field private final op:Ljava/util/stream/FindOps$FindOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/FindOps$FindOp",
            "<TP_OUT;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/FindOps$FindOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/FindOps$FindOp",
            "<TP_OUT;TO;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "op":Ljava/util/stream/FindOps$FindOp;, "Ljava/util/stream/FindOps$FindOp<TP_OUT;TO;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    .line 258
    iput-object p1, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    .line 256
    return-void
.end method

.method constructor <init>(Ljava/util/stream/FindOps$FindTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/FindOps$FindTask",
            "<TP_IN;TP_OUT;TO;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "parent":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    .line 263
    iget-object v0, p1, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iput-object v0, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    .line 261
    return-void
.end method

.method private foundResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "answer":Ljava/lang/Object;, "TO;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isLeftmostNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->shortCircuit(Ljava/lang/Object;)V

    .line 276
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancelLaterNodes()V

    goto :goto_0
.end method


# virtual methods
.method protected doLeaf()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-object v1, v1, Ljava/util/stream/FindOps$FindOp;->sinkSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/TerminalSink;

    iget-object v3, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljava/util/stream/TerminalSink;

    invoke-interface {v1}, Ljava/util/stream/TerminalSink;->get()Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "result":Ljava/lang/Object;, "TO;"
    iget-object v1, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-boolean v1, v1, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    if-nez v1, :cond_1

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractShortCircuitTask;->shortCircuit(Ljava/lang/Object;)V

    .line 289
    :cond_0
    return-object v4

    .line 292
    :cond_1
    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0, v0}, Ljava/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    .line 294
    return-object v0

    .line 297
    :cond_2
    return-object v4
.end method

.method protected getEmptyResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    iget-object v0, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-object v0, v0, Ljava/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1
    .param p1, "spliterator"    # Ljava/util/Spliterator;

    .prologue
    .line 267
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/FindOps$FindTask;

    move-result-object v0

    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/FindOps$FindTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/FindOps$FindTask",
            "<TP_IN;TP_OUT;TO;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/FindOps$FindTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/FindOps$FindTask;-><init>(Ljava/util/stream/FindOps$FindTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v3, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-boolean v3, v3, Ljava/util/stream/FindOps$FindOp;->mustFindFirst:Z

    if-eqz v3, :cond_0

    .line 304
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/FindOps$FindTask;

    .local v0, "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    .line 307
    .local v2, "result":Ljava/lang/Object;, "TO;"
    if-eqz v2, :cond_1

    iget-object v3, p0, Ljava/util/stream/FindOps$FindTask;->op:Ljava/util/stream/FindOps$FindOp;

    iget-object v3, v3, Ljava/util/stream/FindOps$FindOp;->presentPredicate:Ljava/util/function/Predicate;

    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {p0, v2}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    .line 309
    invoke-direct {p0, v2}, Ljava/util/stream/FindOps$FindTask;->foundResult(Ljava/lang/Object;)V

    .line 314
    .end local v0    # "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .end local v2    # "result":Ljava/lang/Object;, "TO;"
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 302
    return-void

    .line 305
    .restart local v0    # "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    .restart local v2    # "result":Ljava/lang/Object;, "TO;"
    :cond_1
    move-object v1, v0

    .local v1, "p":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    .end local v0    # "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    check-cast v0, Ljava/util/stream/FindOps$FindTask;

    .restart local v0    # "child":Ljava/util/stream/FindOps$FindTask;, "Ljava/util/stream/FindOps$FindTask<TP_IN;TP_OUT;TO;>;"
    goto :goto_0
.end method
