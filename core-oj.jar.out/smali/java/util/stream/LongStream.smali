.class public interface abstract Ljava/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava/util/stream/LongStream$Builder;
    .locals 1

    new-instance v0, Ljava/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfLong;

    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/Spliterator$OfLong;)V

    invoke-interface {p0}, Ljava/util/stream/LongStream;->isParallel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/stream/LongStream;->isParallel()Z

    move-result v2

    :goto_0
    invoke-static {v0, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/LongStream;

    return-object v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static empty()Ljava/util/stream/LongStream;
    .locals 2

    invoke-static {}, Ljava/util/Spliterators;->emptyLongSpliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/LongSupplier;)Ljava/util/stream/LongStream;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongStream$1;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/LongStream$1;-><init>(JLjava/util/function/LongUnaryOperator;)V

    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(J)Ljava/util/stream/LongStream;
    .locals 2

    new-instance v0, Ljava/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([J)Ljava/util/stream/LongStream;
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(JJ)Ljava/util/stream/LongStream;
    .locals 10

    const/4 v6, 0x0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long v8, v0, v2

    invoke-static {p0, p1, v8, v9}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v8, v9, p2, p3}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    invoke-static {v1, v6}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(JJ)Ljava/util/stream/LongStream;
    .locals 10

    const-wide/16 v4, 0x1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_0
    sub-long v0, p2, p0

    add-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long v8, v0, v4

    invoke-static {p0, p1, v8, v9}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v8, v9, p2, p3}, Ljava/util/stream/LongStream;->rangeClosed(JJ)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    const/4 v6, 0x1

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljava/util/stream/DoubleStream;
.end method

.method public abstract average()Ljava/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
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
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava/util/stream/LongStream;
.end method

.method public abstract filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
.end method

.method public abstract findAny()Ljava/util/OptionalLong;
.end method

.method public abstract findFirst()Ljava/util/OptionalLong;
.end method

.method public abstract flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
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
.end method

.method public abstract forEach(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/LongConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Ljava/util/PrimitiveIterator$OfLong;
.end method

.method public abstract limit(J)Ljava/util/stream/LongStream;
.end method

.method public abstract map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end method

.method public abstract mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
.end method

.method public abstract mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
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
.end method

.method public abstract max()Ljava/util/OptionalLong;
.end method

.method public abstract min()Ljava/util/OptionalLong;
.end method

.method public abstract noneMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract parallel()Ljava/util/stream/LongStream;
.end method

.method public abstract peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
.end method

.method public abstract reduce(JLjava/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
.end method

.method public bridge synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract sequential()Ljava/util/stream/LongStream;
.end method

.method public abstract skip(J)Ljava/util/stream/LongStream;
.end method

.method public abstract sorted()Ljava/util/stream/LongStream;
.end method

.method public abstract spliterator()Ljava/util/Spliterator$OfLong;
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Ljava/util/LongSummaryStatistics;
.end method

.method public abstract toArray()[J
.end method
