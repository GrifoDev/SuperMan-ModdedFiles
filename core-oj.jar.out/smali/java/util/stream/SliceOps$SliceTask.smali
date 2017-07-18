.class final Ljava/util/stream/SliceOps$SliceTask;
.super Ljava/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractShortCircuitTask",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Node",
        "<TP_OUT;>;",
        "Ljava/util/stream/SliceOps$SliceTask",
        "<TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final op:Ljava/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/AbstractPipeline",
            "<TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<TP_OUT;TP_OUT;*>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;JJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    iput-object p1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-wide p5, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide p7, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method constructor <init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/SliceOps$SliceTask",
            "<TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractShortCircuitTask;-><init>(Ljava/util/stream/AbstractShortCircuitTask;Ljava/util/Spliterator;)V

    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v0, p1, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iput-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v0, p1, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method private completedSize(J)J
    .locals 7

    iget-boolean v4, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v4

    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide v4

    :cond_2
    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_3

    :goto_0
    return-wide v2

    :cond_3
    invoke-direct {v1, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method private doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    iget-wide v0, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_0
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Ljava/util/stream/Node;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_0
.end method

.method private isLeftCompleted(J)Z
    .locals 9

    const/4 v3, 0x1

    iget-boolean v6, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v6, :cond_0

    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_0
    cmp-long v6, v4, p1

    if-ltz v6, :cond_1

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    move-object v1, p0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v6, v2, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    if-ne v1, v6, :cond_2

    iget-object v0, v2, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v0, Ljava/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_2

    invoke-direct {v0, p1, p2}, Ljava/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, p1

    if-ltz v6, :cond_2

    return v3

    :cond_2
    move-object v1, v2

    invoke-virtual {v2}, Ljava/util/stream/AbstractTask;->getParent()Ljava/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    goto :goto_1

    :cond_3
    cmp-long v6, v4, p1

    if-ltz v6, :cond_4

    :goto_2
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    invoke-super {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancel()V

    iget-boolean v0, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->doLeaf()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljava/util/stream/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget v6, v6, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v3, v6}, Ljava/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v6, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v3, v6}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v4

    :goto_0
    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v6, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    iget-object v3, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    iget-object v6, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v6}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v6

    invoke-virtual {v3, v6, v0}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v2

    iget-object v3, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v6, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v6, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v6

    iget-object v7, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v3, v6, v7}, Ljava/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    invoke-interface {v0}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v3

    return-object v3

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    iget-object v6, p0, Ljava/util/stream/AbstractTask;->helper:Ljava/util/stream/PipelineHelper;

    const-wide/16 v8, -0x1

    iget-object v7, p0, Ljava/util/stream/SliceOps$SliceTask;->generator:Ljava/util/function/IntFunction;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v6

    iget-object v7, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v3, v6, v7}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Node$Builder;

    invoke-interface {v3}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Node;->count()J

    move-result-wide v6

    iput-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/stream/AbstractTask;->spliterator:Ljava/util/Spliterator;

    return-object v1
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Nodes;->emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava/util/Spliterator;)Ljava/util/stream/AbstractTask;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/SliceOps$SliceTask;->makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;

    move-result-object v0

    return-object v0
.end method

.method protected makeChild(Ljava/util/Spliterator;)Ljava/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/SliceOps$SliceTask",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/SliceOps$SliceTask;Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v2, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v4, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-boolean v1, p0, Ljava/util/stream/SliceOps$SliceTask;->canceled:Z

    if-eqz v1, :cond_3

    iput-wide v6, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Ljava/util/stream/SliceOps$SliceTask;->doTruncate(Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/SliceOps$SliceTask;->completed:Z

    :cond_1
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Ljava/util/stream/AbstractTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Ljava/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void

    :cond_3
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava/util/stream/Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    iget-wide v2, v1, Ljava/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_5

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Ljava/util/stream/SliceOps$SliceTask;->op:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v1}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v3

    iget-object v1, p0, Ljava/util/stream/AbstractTask;->leftChild:Ljava/util/stream/AbstractTask;

    check-cast v1, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v1}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    iget-object v2, p0, Ljava/util/stream/AbstractTask;->rightChild:Ljava/util/stream/AbstractTask;

    check-cast v2, Ljava/util/stream/SliceOps$SliceTask;

    invoke-virtual {v2}, Ljava/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    invoke-static {v3, v1, v2}, Ljava/util/stream/Nodes;->conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Ljava/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Ljava/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/util/stream/AbstractShortCircuitTask;->cancelLaterNodes()V

    goto :goto_1
.end method
