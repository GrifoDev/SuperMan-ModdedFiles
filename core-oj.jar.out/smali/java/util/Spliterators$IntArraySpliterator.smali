.class final Ljava/util/Spliterators$IntArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntArraySpliterator"
.end annotation


# instance fields
.field private final array:[I

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([II)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    iput p2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iput p3, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntArraySpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    array-length v3, v0

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    if-lt v3, v1, :cond_2

    iget v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    if-ltz v2, :cond_2

    iput v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    if-ge v2, v1, :cond_2

    :cond_1
    aget v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    :cond_2
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

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IntArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntArraySpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 5

    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iget v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    add-int/2addr v2, v0

    ushr-int/lit8 v1, v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Spliterators$IntArraySpliterator;

    iget-object v3, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    iput v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Spliterators$IntArraySpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Spliterators$IntArraySpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
