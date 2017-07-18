.class public Ljava/util/stream/LongPipeline$Head;
.super Ljava/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/LongPipeline",
        "<TE_IN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;IZ)V
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

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;IZ)V
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

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/LongPipeline;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_0
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/LongPipeline;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    goto :goto_0
.end method

.method public final opIsStateful()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
