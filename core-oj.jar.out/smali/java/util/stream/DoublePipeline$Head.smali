.class public Ljava/util/stream/DoublePipeline$Head;
.super Ljava/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
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
        "Ljava/util/stream/DoublePipeline",
        "<TE_IN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline<TE_IN;>.Head<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 543
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline<TE_IN;>.Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 530
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 561
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline<TE_IN;>.Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 560
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/DoublePipeline;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 571
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline<TE_IN;>.Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->-wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 570
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-super {p0, p1}, Ljava/util/stream/DoublePipeline;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0
.end method

.method public final opIsStateful()Z
    .locals 1

    .prologue
    .line 549
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline<TE_IN;>.Head<TE_IN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline<TE_IN;>.Head<TE_IN;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
