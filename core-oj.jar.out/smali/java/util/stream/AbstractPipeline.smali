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
    .param p0, "sourceSpliterator"    # Ljava/util/Spliterator;

    .prologue
    .line 530
    return-object p0
.end method

.method static synthetic -java_util_stream_AbstractPipeline_lambda$3(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 705
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/AbstractPipeline;->-assertionsDisabled:Z

    .line 73
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;IZ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    .line 184
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 185
    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 186
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 189
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 191
    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 182
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    .line 163
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 164
    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 165
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 168
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 170
    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 161
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .locals 2
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "previousStage":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    const/4 v1, 0x1

    .line 202
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    .line 203
    iget-boolean v0, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-boolean v1, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 206
    iput-object p0, p1, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    .line 208
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    .line 209
    sget v0, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 210
    iget v0, p1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v0}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 211
    iget-object v0, p1, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 212
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    .line 214
    :cond_1
    iget v0, p1, Ljava/util/stream/AbstractPipeline;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 202
    return-void
.end method

.method private sourceSpliterator(I)Ljava/util/Spliterator;
    .locals 9
    .param p1, "terminalFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Spliterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v8, 0x0

    .line 397
    const/4 v4, 0x0

    .line 398
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    if-eqz v7, :cond_2

    .line 399
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v4, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 400
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v8, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 410
    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-boolean v7, v7, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v7, :cond_5

    .line 414
    const/4 v0, 0x1

    .line 415
    .local v0, "depth":I
    iget-object v6, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .local v6, "u":Ljava/util/stream/AbstractPipeline;
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v3, v7, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    .local v3, "p":Ljava/util/stream/AbstractPipeline;
    move-object v2, p0

    .local v2, "e":Ljava/util/stream/AbstractPipeline;
    :goto_1
    if-eq v6, p0, :cond_5

    .line 419
    iget v5, v3, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 420
    .local v5, "thisOpFlags":I
    invoke-virtual {v3}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 421
    const/4 v0, 0x0

    .line 423
    sget-object v7, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v7, v5}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 429
    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v7, v7

    and-int/2addr v5, v7

    .line 432
    :cond_0
    invoke-virtual {v3, v6, v4}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v4

    .line 436
    const/16 v7, 0x40

    invoke-interface {v4, v7}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 437
    sget v7, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v7, v7

    and-int/2addr v7, v5

    sget v8, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    or-int v5, v7, v8

    .line 440
    :cond_1
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "depth":I
    .local v1, "depth":I
    iput v0, v3, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 441
    iget v7, v6, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v5, v7}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v7

    iput v7, v3, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 417
    move-object v6, v3

    iget-object v3, v3, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    move v0, v1

    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    goto :goto_1

    .line 402
    .end local v0    # "depth":I
    .end local v2    # "e":Ljava/util/stream/AbstractPipeline;
    .end local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .end local v5    # "thisOpFlags":I
    .end local v6    # "u":Ljava/util/stream/AbstractPipeline;
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    :cond_2
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v7, :cond_3

    .line 403
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    check-cast v4, Ljava/util/Spliterator;

    .line 404
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v8, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    goto :goto_0

    .line 407
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "source already consumed or closed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 438
    .restart local v0    # "depth":I
    .restart local v2    # "e":Ljava/util/stream/AbstractPipeline;
    .restart local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    .restart local v5    # "thisOpFlags":I
    .restart local v6    # "u":Ljava/util/stream/AbstractPipeline;
    :cond_4
    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v7, v7

    and-int/2addr v7, v5

    sget v8, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v5, v7, v8

    goto :goto_2

    .line 445
    .end local v0    # "depth":I
    .end local v2    # "e":Ljava/util/stream/AbstractPipeline;
    .end local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .end local v5    # "thisOpFlags":I
    .end local v6    # "u":Ljava/util/stream/AbstractPipeline;
    :cond_5
    if-eqz p1, :cond_6

    .line 447
    iget v7, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v7}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v7

    iput v7, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 450
    :cond_6
    return-object v4
.end method


# virtual methods
.method synthetic -java_util_stream_AbstractPipeline_lambda$1()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v2, 0x0

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 319
    iput-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 320
    iput-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 321
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 323
    .local v0, "closeAction":Ljava/lang/Runnable;
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 324
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 317
    .end local v0    # "closeAction":Ljava/lang/Runnable;
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

    .prologue
    .line 478
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    .line 482
    invoke-interface {p2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 483
    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    .line 477
    :goto_0
    return-void

    .line 486
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

    .prologue
    .line 494
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v0, p0

    .line 495
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 496
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_0

    .line 498
    :cond_0
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 499
    invoke-virtual {v0, p2, p1}, Ljava/util/stream/AbstractPipeline;->forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    .line 500
    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    .line 492
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

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "terminalOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_OUT;TR;>;"
    const/4 v1, 0x1

    .line 228
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

    .line 229
    :cond_1
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v0, :cond_2

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 233
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    :goto_1
    return-object v0

    .line 235
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
    .param p2, "flatten"    # Z
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

    .prologue
    .line 539
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0, p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;->evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 545
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    .line 544
    invoke-virtual {p0, v2, v3, p3}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 546
    .local v0, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TE_OUT;>;"
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

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 252
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iput v2, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 258
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    invoke-direct {v1, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 261
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

    .prologue
    .line 467
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
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

    .prologue
    .line 458
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    move-object v0, p0

    .line 459
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 460
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v1

    return-object v1
.end method

.method public final getStreamAndOpFlags()I
    .locals 1

    .prologue
    .line 505
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method public final getStreamFlags()I
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final isOrdered()Z
    .locals 2

    .prologue
    .line 509
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    iget v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final isParallel()Z
    .locals 1

    .prologue
    .line 371
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
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
    .param p1, "closeHandler"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 332
    .local v0, "existingHandler":Ljava/lang/Runnable;
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 333
    if-nez v0, :cond_0

    .line 332
    .end local p1    # "closeHandler":Ljava/lang/Runnable;
    :goto_0
    iput-object p1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 336
    return-object p0

    .line 335
    .restart local p1    # "closeHandler":Ljava/lang/Runnable;
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

    .prologue
    .line 679
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
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

    .prologue
    .line 705
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
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

    .prologue
    .line 312
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 313
    return-object p0
.end method

.method public final sequential()Ljava/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 306
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

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v2, 0x0

    .line 276
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-eq p0, v1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 279
    :cond_0
    iget-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v1, :cond_1

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stream has already been operated upon or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 283
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 286
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 287
    return-object v0

    .line 289
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    .line 292
    .restart local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 293
    return-object v0

    .line 296
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
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

    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v3, 0x0

    .line 343
    iget-boolean v2, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-eqz v2, :cond_0

    .line 344
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stream has already been operated upon or closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 347
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-ne p0, v2, :cond_3

    .line 348
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v2, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 351
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v3, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 352
    return-object v0

    .line 354
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_1
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v2, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 357
    .local v1, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v3, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 358
    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;

    move-result-object v2

    return-object v2

    .line 361
    .end local v1    # "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "source already consumed or closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
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

    .prologue
    .line 472
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "TS;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/stream/AbstractPipeline;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    .line 473
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

    .prologue
    .line 515
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    move-object v0, p0

    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_0

    .line 518
    iget-object v1, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iget v1, v1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object p1

    .line 517
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_0

    .line 520
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

    .prologue
    .line 526
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sourceSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    .line 527
    return-object p1

    .line 530
    :cond_0
    new-instance v0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;-><init>(Ljava/util/Spliterator;)V

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
