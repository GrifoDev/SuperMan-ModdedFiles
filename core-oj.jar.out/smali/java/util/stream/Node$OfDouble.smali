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

    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Double;I)V
    .locals 6

    sget-boolean v2, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {v2, v3}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Double;

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

    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .locals 1

    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[D
    .locals 1

    new-array v0, p1, [D

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;
    .locals 9
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

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-nez v5, :cond_0

    return-object p0

    :cond_0
    sub-long v2, p3, p1

    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v4

    check-cast v4, Ljava/util/Spliterator$OfDouble;

    invoke-static {v2, v3}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder$OfDouble;->begin(J)V

    const/4 v0, 0x0

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

    :cond_2
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfDouble;->end()V

    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfDouble;->build()Ljava/util/stream/Node$OfDouble;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1

    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1

    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method
