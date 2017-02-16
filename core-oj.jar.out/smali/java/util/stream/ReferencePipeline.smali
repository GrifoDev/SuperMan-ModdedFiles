.class public abstract Ljava/util/stream/ReferencePipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "ReferencePipeline.java"

# interfaces
.implements Ljava/util/stream/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ReferencePipeline$-java_lang_Object__toArray__LambdaImpl0;,
        Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;,
        Ljava/util/stream/ReferencePipeline$-long_count__LambdaImpl0;,
        Ljava/util/stream/ReferencePipeline$Head;,
        Ljava/util/stream/ReferencePipeline$StatefulOp;,
        Ljava/util/stream/ReferencePipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Stream",
        "<TP_OUT;>;>;",
        "Ljava/util/stream/Stream",
        "<TP_OUT;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_ReferencePipeline-mthref-0(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -java_util_stream_ReferencePipeline_lambda$5(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "accumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .prologue
    .line 497
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_ReferencePipeline_lambda$6(Ljava/lang/Object;)J
    .locals 2
    .param p0, "e"    # Ljava/lang/Object;

    .prologue
    .line 527
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
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
    .line 85
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 84
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
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
    .line 72
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .locals 0
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TP_IN;*>;I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 94
    return-void
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TP_OUT;>;)Z"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TP_OUT;>;)Z"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;-TP_OUT;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TP_OUT;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector",
            "<-TP_OUT;TA;TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "collector":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TP_OUT;TA;TR;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 492
    if-eqz v2, :cond_1

    .line 495
    :cond_0
    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 496
    .local v1, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 497
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TP_OUT;>;"
    new-instance v2, Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;

    invoke-direct {v2, v0, v1}, Ljava/util/stream/ReferencePipeline$-java_lang_Object_collect_java_util_stream_Collector_collector_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Ljava/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    .line 502
    .end local v0    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TP_OUT;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .end local v1    # "container":Ljava/lang/Object;, "TA;"
    :goto_1
    return-object v1

    .line 500
    :cond_1
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/stream/Collector;)Ljava/util/stream/TerminalOp;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "container":Ljava/lang/Object;, "TA;"
    goto :goto_0

    .line 504
    :cond_2
    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public final count()J
    .locals 2

    .prologue
    .line 527
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    new-instance v0, Ljava/util/stream/ReferencePipeline$-long_count__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/ReferencePipeline$-long_count__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {p0}, Ljava/util/stream/DistinctOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p3, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TP_OUT;>;)",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/util/stream/ReferencePipeline$2;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 164
    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 163
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$2;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public final findAny()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeRef(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public final findFirst()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeRef(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TP_OUT;+",
            "Ljava/util/stream/Stream",
            "<+TR;>;>;)",
            "Ljava/util/stream/Stream",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/Stream<+TR;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/stream/ReferencePipeline$7;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 257
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 256
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$7;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<-TP_OUT;+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/DoubleStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v0, Ljava/util/stream/ReferencePipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 312
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 311
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$9;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<-TP_OUT;+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/IntStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/util/stream/ReferencePipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 284
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 283
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$8;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<-TP_OUT;+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/LongStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v0, Ljava/util/stream/ReferencePipeline$10;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 340
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 339
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$10;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 423
    return-void
.end method

.method public final forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_OUT;>;",
            "Ljava/util/stream/Sink",
            "<TP_OUT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_OUT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :cond_1
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<TP_OUT;>;>;)",
            "Ljava/util/Spliterator",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<TP_OUT;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/Stream;
    .locals 5
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const-wide/16 v2, 0x0

    .line 400
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_0
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .locals 1
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;)",
            "Ljava/util/stream/Node$Builder",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TP_OUT;+TR;>;)",
            "Ljava/util/stream/Stream",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/stream/ReferencePipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 188
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 187
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$3;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TP_OUT;>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/stream/ReferencePipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 239
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 238
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$6;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction",
            "<-TP_OUT;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/util/stream/ReferencePipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 205
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 204
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$4;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToIntFunction;)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction",
            "<-TP_OUT;>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/util/stream/ReferencePipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 222
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 221
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$5;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public final max(Ljava/util/Comparator;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TP_OUT;>;)",
            "Ljava/util/Optional",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final min(Ljava/util/Comparator;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TP_OUT;>;)",
            "Ljava/util/Optional",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TP_OUT;>;)Z"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v0, Ljava/util/stream/ReferencePipeline$11;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 367
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 366
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$11;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava/util/function/BiFunction",
            "<TR;-TP_OUT;TR;>;",
            "Ljava/util/function/BinaryOperator",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "identity":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TR;-TP_OUT;TR;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;",
            "Ljava/util/function/BinaryOperator",
            "<TP_OUT;>;)TP_OUT;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "identity":Ljava/lang/Object;, "TP_OUT;"
    .local p2, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TP_OUT;>;"
    invoke-static {p1, p2, p2}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator",
            "<TP_OUT;>;)",
            "Ljava/util/Optional",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TP_OUT;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/Stream;
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const-wide/16 v2, 0x0

    .line 407
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 410
    return-object p0

    .line 412
    :cond_1
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TP_OUT;>;)",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p0, p1}, Ljava/util/stream/SortedOps;->makeRef(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    new-instance v0, Ljava/util/stream/ReferencePipeline$-java_lang_Object__toArray__LambdaImpl0;

    invoke-direct {v0}, Ljava/util/stream/ReferencePipeline$-java_lang_Object__toArray__LambdaImpl0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction",
            "<[TA;>;)[TA;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TA;>;"
    move-object v0, p1

    .line 439
    .local v0, "rawGenerator":Ljava/util/function/IntFunction;
    invoke-virtual {p0, p1}, Ljava/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->unordered()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    return-object p0

    .line 152
    :cond_0
    new-instance v0, Ljava/util/stream/ReferencePipeline$1;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/ReferencePipeline$1;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .locals 1
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
