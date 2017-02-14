.class final Ljava/util/Spliterators$DoubleArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleArraySpliterator"
.end annotation


# instance fields
.field private final array:[D

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([DI)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-void
.end method

.method public constructor <init>([DIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    iput p2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iput p3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    array-length v3, v0

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    if-lt v3, v1, :cond_2

    iget v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    if-ltz v2, :cond_2

    iput v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    if-ge v2, v1, :cond_2

    :cond_1
    aget-wide v4, v0, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$DoubleArraySpliterator;->hasCharacteristics(I)Z

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

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    aget-wide v0, v0, v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 5

    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iget v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    add-int/2addr v2, v0

    ushr-int/lit8 v1, v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Spliterators$DoubleArraySpliterator;

    iget-object v3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    iput v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleArraySpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleArraySpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
