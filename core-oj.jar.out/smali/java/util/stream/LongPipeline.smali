.class public abstract Ljava/util/stream/LongPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;,
        Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl1;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl2;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalLong_max__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalLong_min__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-long__toArray__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$Head;,
        Ljava/util/stream/LongPipeline$StatefulOp;,
        Ljava/util/stream/LongPipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TE_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;",
        "Ljava/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_LongPipeline-mthref-0(Ljava/util/stream/Sink;J)V
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-1(J)Ljava/lang/Long;
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-2(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-3(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-4(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-5()Ljava/util/LongSummaryStatistics;
    .locals 1

    new-instance v0, Ljava/util/LongSummaryStatistics;

    invoke-direct {v0}, Ljava/util/LongSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-6(Ljava/util/LongSummaryStatistics;J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-7(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-8(I)[Ljava/lang/Long;
    .locals 1

    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$10([J[J)V
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

.method static synthetic -java_util_stream_LongPipeline_lambda$11(J)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$15(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$4(Ljava/lang/Long;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$8()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$9([JJ)V
    .locals 7

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    add-long/2addr v2, p1

    aput-wide v2, p0, v0

    return-void
.end method

.method static synthetic -wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .locals 1

    invoke-static {p0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
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
            "Ljava/lang/Long;",
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

.method private static adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Spliterator$OfLong;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Spliterator$OfLong;

    return-object p0

    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string/jumbo v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/function/LongConsumer;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/function/LongConsumer;

    return-object p0

    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string/jumbo v1, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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

    new-instance v0, Ljava/util/stream/LongPipeline$1;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$1;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl0;

    invoke-direct {v1}, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl0;-><init>()V

    new-instance v2, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl1;

    invoke-direct {v2}, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl1;-><init>()V

    new-instance v3, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl2;

    invoke-direct {v3}, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl2;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjLongConsumer",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;

    invoke-direct {v0, p3}, Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    new-instance v0, Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/LongStream;
    .locals 2

    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;

    invoke-direct {v1}, Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$8;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public final findAny()Ljava/util/OptionalLong;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalLong;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction",
            "<+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/LongPipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$6;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v1

    invoke-static {p2}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;

    move-result-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .locals 1

    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/LongStream;
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
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node$Builder",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$2;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$2;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$5;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$4;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToIntFunction;)V

    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction",
            "<+TU;>;)",
            "Ljava/util/stream/Stream",
            "<TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$3;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method

.method public final max()Ljava/util/OptionalLong;
    .locals 1

    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_max__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_max__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava/util/OptionalLong;
    .locals 1

    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_min__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_min__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1

    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljava/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$9;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 3

    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .locals 1

    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/LongStream;
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

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted()Ljava/util/stream/LongStream;
    .locals 1

    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeLong(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;

    invoke-direct {v2}, Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/LongSummaryStatistics;
    .locals 3

    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl0;-><init>()V

    new-instance v1, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;

    invoke-direct {v1}, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;-><init>()V

    new-instance v2, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;

    invoke-direct {v2}, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final toArray()[J
    .locals 1

    new-instance v0, Ljava/util/stream/LongPipeline$-long__toArray__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-long__toArray__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfLong;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->unordered()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava/util/stream/LongStream;
    .locals 3

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/stream/LongPipeline$7;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$7;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
