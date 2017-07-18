.class final Ljava/util/stream/ReduceOps$ReduceTask;
.super Ljava/util/stream/AbstractTask;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReduceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TP_OUT;TR;TS;>;>",
        "Ljava/util/stream/AbstractTask",
        "<TP_IN;TP_OUT;TS;",
        "Ljava/util/stream/ReduceOps$ReduceTask",
        "<TP_IN;TP_OUT;TR;TS;>;>;"
    }
.end annotation


# instance fields
.field private final op:Ljava/util/stream/ReduceOps$ReduceOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/ReduceOps$ReduceOp",
            "<TP_OUT;TR;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/ReduceOps$ReduceOp;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$ReduceOp",
            "<TP_OUT;TR;TS;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    iput-object p1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    return-void
.end method

.method constructor <init>(Ljava/util/stream/ReduceOps$ReduceTask;Ljava/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ReduceOps$ReduceTask",
            "<TP_IN;TP_OUT;TR;TS;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractTask;-><init>(Ljava/util/stream/AbstractTask;Ljava/util/Spliterator;)V

    iget-object v0, p1, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    iput-object v0, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$ReduceTask;->doLeaf()Ljava/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v0

    return-object v0
.end method

.method protected doLeaf()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$ReduceTask;->op:Ljava/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v1}, Ljava/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$ReduceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/ReduceOps$ReduceTask;

    move-result-object v0

    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/ReduceOps$ReduceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/ReduceOps$ReduceTask",
            "<TP_IN;TP_OUT;TR;TS;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/ReduceOps$ReduceTask;-><init>(Ljava/util/stream/ReduceOps$ReduceTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/ReduceOps$AccumulatingSink;

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Ljava/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0, v1}, Ljava/util/stream/ReduceOps$AccumulatingSink;->combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
