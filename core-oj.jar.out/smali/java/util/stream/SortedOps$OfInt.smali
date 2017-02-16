.class final Ljava/util/stream/SortedOps$OfInt;
.super Ljava/util/stream/IntPipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/IntPipeline$StatefulOp",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    .line 170
    sget v1, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    .line 169
    invoke-direct {p0, p1, v0, v1}, Ljava/util/stream/IntPipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 168
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    sget-object v2, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v2

    return-object v2

    .line 193
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfInt;

    .line 195
    .local v1, "n":Ljava/util/stream/Node$OfInt;
    invoke-interface {v1}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 196
    .local v0, "content":[I
    invoke-static {v0}, Ljava/util/Arrays;->parallelSort([I)V

    .line 198
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v2

    return-object v2
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    return-object p2

    .line 179
    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/util/stream/SortedOps$SizedIntSortingSink;

    invoke-direct {v0, p2}, Ljava/util/stream/SortedOps$SizedIntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    return-object v0

    .line 182
    :cond_1
    new-instance v0, Ljava/util/stream/SortedOps$IntSortingSink;

    invoke-direct {v0, p2}, Ljava/util/stream/SortedOps$IntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method
