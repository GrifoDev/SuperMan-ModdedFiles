.class final Ljava/util/stream/DistinctOps$1;
.super Ljava/util/stream/ReferencePipeline$StatefulOp;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DistinctOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;,
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;,
        Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReferencePipeline$StatefulOp",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_DistinctOps$1-mthref-0()Ljava/util/LinkedHashSet;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_DistinctOps$1-mthref-1(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_DistinctOps$1-mthref-2(Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic -java_util_stream_DistinctOps$1_lambda$4(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    sget-object v5, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, p2, v7, p3}, Ljava/util/stream/PipelineHelper;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v5

    return-object v5

    :cond_0
    sget-object v5, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/DistinctOps$1;->reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;

    move-result-object v5

    return-object v5

    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v5, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;

    invoke-direct {v5, v4, v3}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_opEvaluateParallel_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_java_util_function_IntFunction_generator_LambdaImpl0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-static {v5, v7}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :cond_2
    invoke-static {v1}, Ljava/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava/util/stream/Node;

    move-result-object v5

    return-object v5
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/DistinctOps$1;->reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    invoke-virtual {p1, p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TT;>;)",
            "Ljava/util/stream/Sink",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/stream/DistinctOps$1$1;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/DistinctOps$1$1;-><init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/stream/DistinctOps$1$2;

    invoke-direct {v0, p0, p2}, Ljava/util/stream/DistinctOps$1$2;-><init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method reduce(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    invoke-direct {v1}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    new-instance v2, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;

    invoke-direct {v2}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl1;-><init>()V

    new-instance v3, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;

    invoke-direct {v3}, Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
.end method
