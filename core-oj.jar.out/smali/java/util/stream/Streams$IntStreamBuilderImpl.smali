.class final Ljava/util/stream/Streams$IntStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/IntStream$Builder;
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/stream/IntStream$Builder;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer$OfInt;

.field first:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    .line 447
    iput p1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 448
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 446
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .prologue
    .line 455
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 456
    iput p1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 457
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 454
    :goto_0
    return-void

    .line 459
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 460
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    if-nez v0, :cond_1

    .line 461
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    .line 462
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    iget v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-virtual {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 463
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 466
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    goto :goto_0

    .line 469
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public build()Ljava/util/stream/IntStream;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 476
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 478
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 481
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 506
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 510
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 511
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 506
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 492
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 493
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 496
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 497
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    .line 498
    const/4 v0, 0x1

    return v0

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

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
