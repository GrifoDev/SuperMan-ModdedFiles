.class public interface abstract Ljava/util/stream/Node$OfDouble;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$OfDouble$-java_util_stream_Node$OfDouble_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "[D",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_stream_Node$OfDouble_lambda$3(D)V
    .locals 0
    .param p0, "e"    # D

    .prologue
    .line 0
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Double;I)V
    .locals 6
    .param p1, "boxed"    # [Ljava/lang/Double;
    .param p2, "offset"    # I

    .prologue
    .line 494
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    sget-boolean v2, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {v2, v3}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 497
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 498
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 499
    add-int v2, p2, v1

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v2

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 493
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    check-cast p1, [Ljava/lang/Double;

    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 473
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    .line 471
    :goto_0
    return-void

    .line 476
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 478
    :cond_1
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .locals 1

    .prologue
    .line 529
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 518
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[D
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 519
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    new-array v0, p1, [D

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-nez v5, :cond_0

    .line 506
    return-object p0

    .line 507
    :cond_0
    sub-long v2, p3, p1

    .line 508
    .local v2, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v4

    check-cast v4, Ljava/util/Spliterator$OfDouble;

    .line 509
    .local v4, "spliterator":Ljava/util/Spliterator$OfDouble;
    invoke-static {v2, v3}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v1

    .line 510
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder$OfDouble;
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder$OfDouble;->begin(J)V

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v6, v0

    cmp-long v5, v6, p1

    if-gez v5, :cond_1

    new-instance v5, Ljava/util/stream/Node$OfDouble$-java_util_stream_Node$OfDouble_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;

    invoke-direct {v5}, Ljava/util/stream/Node$OfDouble$-java_util_stream_Node$OfDouble_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-long v6, v0

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_2
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfDouble;->end()V

    .line 514
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfDouble;->build()Ljava/util/stream/Node$OfDouble;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    .prologue
    .line 504
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    .prologue
    .line 504
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method
