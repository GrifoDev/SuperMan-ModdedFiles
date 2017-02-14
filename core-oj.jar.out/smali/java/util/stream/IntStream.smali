.class public interface abstract Ljava/util/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/IntStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/IntStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava/util/stream/IntStream$Builder;
    .locals 1

    new-instance v0, Ljava/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfInt;

    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/Spliterator$OfInt;)V

    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v2

    :goto_0
    invoke-static {v0, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/IntStream;

    return-object v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static empty()Ljava/util/stream/IntStream;
    .locals 2

    invoke-static {}, Ljava/util/Spliterators;->emptyIntSpliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntStream$1;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/IntStream$1;-><init>(ILjava/util/function/IntUnaryOperator;)V

    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(I)Ljava/util/stream/IntStream;
    .locals 2

    new-instance v0, Ljava/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([I)Ljava/util/stream/IntStream;
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Ljava/util/stream/IntStream;
    .locals 2

    const/4 v1, 0x0

    if-lt p0, p1, :cond_0

    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/stream/Streams$RangeIntSpliterator;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(II)Ljava/util/stream/IntStream;
    .locals 2

    if-le p0, p1, :cond_0

    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljava/util/stream/DoubleStream;
.end method

.method public abstract asLongStream()Ljava/util/stream/LongStream;
.end method

.method public abstract average()Ljava/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
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
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava/util/stream/IntStream;
.end method

.method public abstract filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
.end method

.method public abstract findAny()Ljava/util/OptionalInt;
.end method

.method public abstract findFirst()Ljava/util/OptionalInt;
.end method

.method public abstract flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
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
.end method

.method public abstract forEach(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/IntConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Ljava/util/PrimitiveIterator$OfInt;
.end method

.method public abstract limit(J)Ljava/util/stream/IntStream;
.end method

.method public abstract map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end method

.method public abstract mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
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
.end method

.method public abstract max()Ljava/util/OptionalInt;
.end method

.method public abstract min()Ljava/util/OptionalInt;
.end method

.method public abstract noneMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract parallel()Ljava/util/stream/IntStream;
.end method

.method public abstract peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
.end method

.method public abstract reduce(ILjava/util/function/IntBinaryOperator;)I
.end method

.method public abstract reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
.end method

.method public bridge synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract sequential()Ljava/util/stream/IntStream;
.end method

.method public abstract skip(J)Ljava/util/stream/IntStream;
.end method

.method public abstract sorted()Ljava/util/stream/IntStream;
.end method

.method public abstract spliterator()Ljava/util/Spliterator$OfInt;
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract sum()I
.end method

.method public abstract summaryStatistics()Ljava/util/IntSummaryStatistics;
.end method

.method public abstract toArray()[I
.end method
