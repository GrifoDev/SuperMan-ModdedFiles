.class public abstract Ljava/util/stream/AbstractPipeline;
.super Ljava/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_spliterator__LambdaImpl0;,
        Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/BaseStream",
        "<TE_OUT;TS;>;>",
        "Ljava/util/stream/PipelineHelper",
        "<TE_OUT;>;",
        "Ljava/util/stream/BaseStream",
        "<TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Ljava/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Ljava/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<*>;"
        }
    .end annotation
.end field

.field private final sourceStage:Ljava/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_AbstractPipeline_lambda$2(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0

    return-object p0
.end method

.method static synthetic -java_util_stream_AbstractPipeline_lambda$3(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/AbstractPipeline;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;I)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    iget-boolean v0, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iput-object p0, p1, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    sget v0, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v0, p1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v0}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    iget-object v0, p1, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    :cond_1
    iget v0, p1, Ljava/util/stream/AbstractPipeline;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    return-void
.end method

.method private sourceSpliterator(I)Ljava/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Spliterator",
            "<*>;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    if-eqz v7, :cond_2

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v4, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v8, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-boolean v7, v7, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    iget-object v6, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v3, v7, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    move-object v2, p0

    :goto_1
    if-eq v6, p0, :cond_5

    iget v5, v3, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v3}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    sget-object v7, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v7, v5}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v7, v7

    and-int/2addr v5, v7

    :cond_0
    invoke-virtual {v3, v6, v4}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v4

    const/16 v7, 0x40

    invoke-interface {v4, v7}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sget v7, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v7, v7

    and-int/2addr v7, v5

    sget v8, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    or-int v5, v7, v8

    :cond_1
    :goto_2
    add-int/lit8 v1, v0, 0x1

    iput v0, v3, Ljava/util/stream/AbstractPipeline;->depth:I

    iget v7, v6, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v5, v7}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v7

    iput v7, v3, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    move-object v6, v3

    iget-object v3, v3, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v7, :cond_3

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Spliterator;

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v8, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "source already consumed or closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v7, v7

    and-int/2addr v7, v5

    sget v8, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v5, v7, v8

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget v7, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v7}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v7

    iput v7, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    :cond_6
    return-object v4
.end method


# virtual methods
.method synthetic -java_util_stream_AbstractPipeline_lambda$1()Ljava/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iput-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    iput-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method final copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink",
            "<TP_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    invoke-interface {p2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    goto :goto_0
.end method

.method final copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink",
            "<TP_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    invoke-virtual {v0, p2, p1}, Ljava/util/stream/AbstractPipeline;->forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    return-void
.end method

.method final evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/TerminalOp",
            "<TE_OUT;TR;>;)TR;"
        }
    .end annotation

    const/4 v1, 0x1

    sget-boolean v0, Ljava/util/stream/AbstractPipeline;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->inputShape()Ljava/util/stream/StreamShape;

    move-result-object v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public final evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;->evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p3}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$Builder;

    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method public final evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    invoke-direct {v1, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public abstract evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method final exactOutputSizeIfKnown(Ljava/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)J"
        }
    .end annotation

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public abstract forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)V"
        }
    .end annotation
.end method

.method public abstract getOutputShape()Ljava/util/stream/StreamShape;
.end method

.method final getSourceShape()Ljava/util/stream/StreamShape;
    .locals 2

    move-object v0, p0

    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v1

    return-object v1
.end method

.method public final getStreamAndOpFlags()I
    .locals 1

    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method public final getStreamFlags()I
    .locals 1

    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final isOrdered()Z
    .locals 2

    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    iget v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .locals 1

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method public abstract lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;>;)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method public abstract makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node$Builder",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Ljava/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_0
.end method

.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Parallel evaluation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract opIsStateful()Z
.end method

.method public abstract opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Ljava/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method public final sequential()Ljava/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method final sourceStageSpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-eq p0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stream has already been operated upon or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    return-object v0

    :cond_2
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "source already consumed or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v2, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stream has already been operated upon or closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-ne p0, v2, :cond_3

    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v2, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v3, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    return-object v0

    :cond_1
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v2, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v3, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "source already consumed or closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_spliterator__LambdaImpl0;

    invoke-direct {v2, p0}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_spliterator__LambdaImpl0;-><init>(Ljava/util/stream/AbstractPipeline;)V

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v3

    invoke-virtual {p0, p0, v2, v3}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    move-result-object v2

    return-object v2
.end method

.method public abstract wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method final wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;>(TS;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TS;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/stream/AbstractPipeline;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    return-object p1
.end method

.method public final wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)",
            "Ljava/util/stream/Sink",
            "<TP_IN;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iget v1, v1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object p1

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method final wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;-><init>(Ljava/util/Spliterator;)V

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
