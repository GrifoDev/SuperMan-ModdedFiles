.class final Ljava/util/stream/Streams$LongStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/LongStream$Builder;
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/stream/LongStream$Builder;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer$OfLong;

.field first:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "t"    # J

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    .line 538
    iput-wide p1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 539
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 537
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5
    .param p1, "t"    # J

    .prologue
    .line 546
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 547
    iput-wide p1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 548
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 545
    :goto_0
    return-void

    .line 550
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 551
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    iput-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    .line 553
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    iget-wide v2, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-virtual {v0, v2, v3}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 554
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 557
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    goto :goto_0

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public build()Ljava/util/stream/LongStream;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 567
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 569
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 572
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    goto :goto_0

    .line 575
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 597
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 598
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 601
    iget-wide v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 602
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 597
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 583
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 587
    iget-wide v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 589
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

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
