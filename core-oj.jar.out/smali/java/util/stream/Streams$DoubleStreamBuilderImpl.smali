.class final Ljava/util/stream/Streams$DoubleStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/DoubleStream$Builder;
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/stream/DoubleStream$Builder;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    return-void
.end method

.method constructor <init>(D)V
    .locals 1
    .param p1, "t"    # D

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    .line 629
    iput-wide p1, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 630
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 628
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "t"    # D

    .prologue
    .line 637
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 638
    iput-wide p1, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 639
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 636
    :goto_0
    return-void

    .line 641
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 642
    iget-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    if-nez v0, :cond_1

    .line 643
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    .line 644
    iget-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-virtual {v0, v2, v3}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 645
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 648
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    goto :goto_0

    .line 651
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public build()Ljava/util/stream/DoubleStream;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 657
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 658
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 660
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 663
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    goto :goto_0

    .line 666
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 688
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 692
    iget-wide v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 688
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 674
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 675
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 678
    iget-wide v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 680
    const/4 v0, 0x1

    return v0

    .line 683
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
