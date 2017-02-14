.class public abstract Ljava/util/stream/IntPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/stream/IntStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-int_sum__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjIntConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;,
        Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl1;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl2;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalInt_min__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-long_count__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$Head;,
        Ljava/util/stream/IntPipeline$StatefulOp;,
        Ljava/util/stream/IntPipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TE_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/IntStream;",
        ">;",
        "Ljava/util/stream/IntStream;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_IntPipeline-mthref-0(Ljava/util/stream/Sink;I)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Sink;->accept(I)V

    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-1(I)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-2(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Integer;->sum(II)I

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-3(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-4(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-5()Ljava/util/IntSummaryStatistics;
    .locals 1

    new-instance v0, Ljava/util/IntSummaryStatistics;

    invoke-direct {v0}, Ljava/util/IntSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-6(Ljava/util/IntSummaryStatistics;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-7(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-8(I)[Ljava/lang/Integer;
    .locals 1

    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$10([JI)V
    .locals 6

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    int-to-long v4, p1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$11([J[J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-long/2addr v0, v2

    aput-wide v0, p0, v5

    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$15(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$4(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$8(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$9()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;
    .locals 1

    invoke-static {p0}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method private static adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Spliterator$OfInt;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Spliterator$OfInt;

    return-object p0

    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string/jumbo v1, "using IntStream.adapt(Spliterator<Integer> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IntStream.adapt(Spliterator<Integer> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Ljava/util/stream/Sink;)Ljava/util/function/IntConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/function/IntConsumer;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/function/IntConsumer;

    return-object p0

    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string/jumbo v1, "using IntStream.adapt(Sink<Integer> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asDoubleStream()Ljava/util/stream/DoubleStream;
    .locals 4

    new-instance v0, Ljava/util/stream/IntPipeline$2;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$2;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final asLongStream()Ljava/util/stream/LongStream;
    .locals 4

    new-instance v0, Ljava/util/stream/IntPipeline$1;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$1;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl0;

    invoke-direct {v1}, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl0;-><init>()V

    new-instance v2, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl1;

    invoke-direct {v2}, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl1;-><init>()V

    new-instance v3, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl2;

    invoke-direct {v3}, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl2;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    long-to-double v2, v2

    aget-wide v4, v0, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v1

    goto :goto_0
.end method

.method public final boxed()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjIntConsumer",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/IntPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjIntConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;

    invoke-direct {v0, p3}, Ljava/util/stream/IntPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjIntConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    new-instance v0, Ljava/util/stream/IntPipeline$-long_count__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-long_count__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/IntStream;
    .locals 2

    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;

    invoke-direct {v1}, Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
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
            "<TP_IN;>;Z",
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

    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$9;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method public final findAny()Ljava/util/OptionalInt;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeInt(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalInt;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeInt(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/IntPipeline$7;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$7;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public final forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v1

    invoke-static {p2}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/IntConsumer;

    move-result-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .locals 1

    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/IntStream;
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$3;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$6;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$5;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToLongFunction;)V

    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction",
            "<+TU;>;)",
            "Ljava/util/stream/Stream",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$4;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    return-object v0
.end method

.method public final max()Ljava/util/OptionalInt;
    .locals 1

    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava/util/OptionalInt;
    .locals 1

    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_min__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_min__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljava/util/stream/IntStream;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$10;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$10;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntConsumer;)V

    return-object v0
.end method

.method public final reduce(ILjava/util/function/IntBinaryOperator;)I
    .locals 1

    invoke-static {p1, p2}, Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
    .locals 1

    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/IntStream;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/IntStream;
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted()Ljava/util/stream/IntStream;
    .locals 1

    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeInt(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final sum()I
    .locals 2

    new-instance v0, Ljava/util/stream/IntPipeline$-int_sum__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-int_sum__LambdaImpl0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/stream/IntPipeline;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    return v0
.end method

.method public final summaryStatistics()Ljava/util/IntSummaryStatistics;
    .locals 3

    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl0;-><init>()V

    new-instance v1, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;

    invoke-direct {v1}, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;-><init>()V

    new-instance v2, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;

    invoke-direct {v2}, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IntSummaryStatistics;

    return-object v0
.end method

.method public final toArray()[I
    .locals 1

    new-instance v0, Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfInt;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->unordered()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava/util/stream/IntStream;
    .locals 3

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/stream/IntPipeline$8;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$8;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
