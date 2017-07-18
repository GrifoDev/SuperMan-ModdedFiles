.class final Ljava/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    iput p2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput p3, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private splitPoint(J)I
    .locals 5

    const-wide/32 v2, 0x1000000

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    int-to-long v2, v0

    div-long v2, p1, v2

    long-to-int v1, v2

    return v1

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    iget v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    iput v5, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v2, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    move v3, v2

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v3

    :cond_0
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    if-lez v1, :cond_1

    iput v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v3

    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 6

    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-direct {p0, v0, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
