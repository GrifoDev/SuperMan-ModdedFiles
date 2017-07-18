.class public final Ljava/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;
    .locals 2

    new-instance v0, Ljava/util/stream/DoublePipeline$Head;

    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/DoublePipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static doubleStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/DoubleStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator$OfDouble;",
            ">;IZ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/DoublePipeline$Head;

    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/DoublePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;
    .locals 2

    new-instance v0, Ljava/util/stream/IntPipeline$Head;

    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/IntPipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator$OfInt;",
            ">;IZ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/IntPipeline$Head;

    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/IntPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;
    .locals 2

    new-instance v0, Ljava/util/stream/LongPipeline$Head;

    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/LongPipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/LongStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator$OfLong;",
            ">;IZ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    new-instance v0, Ljava/util/stream/LongPipeline$Head;

    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/LongPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TT;>;Z)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/ReferencePipeline$Head;

    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<TT;>;>;IZ)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/ReferencePipeline$Head;

    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method
