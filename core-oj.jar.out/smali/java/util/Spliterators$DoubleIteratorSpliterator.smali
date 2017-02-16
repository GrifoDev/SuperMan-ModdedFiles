.class final Ljava/util/Spliterators$DoubleIteratorSpliterator;
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
    name = "DoubleIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava/util/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Ljava/util/PrimitiveIterator$OfDouble;I)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p2, "characteristics"    # I

    .prologue
    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iput-object p1, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2068
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2069
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2066
    return-void
.end method

.method public constructor <init>(Ljava/util/PrimitiveIterator$OfDouble;JI)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .prologue
    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    iput-object p1, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2051
    iput-wide p2, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2052
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    .line 2053
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 p4, v0, 0x4000

    .line 2052
    .end local p4    # "characteristics":I
    :cond_0
    iput p4, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2049
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 2115
    iget v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 2111
    iget-wide v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 2094
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 2095
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2096
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 2094
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

    .prologue
    .line 2119
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    const/4 v0, 0x0

    return-object v0

    .line 2121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 2100
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 2101
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2102
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 2104
    const/4 v0, 0x1

    return v0

    .line 2106
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 10

    .prologue
    .line 2074
    iget-object v1, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2075
    .local v1, "i":Ljava/util/PrimitiveIterator$OfDouble;
    iget-wide v4, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2076
    .local v4, "s":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2077
    iget v6, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    .line 2078
    .local v3, "n":I
    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 2079
    long-to-int v3, v4

    .line 2080
    :cond_0
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_1

    .line 2081
    const/high16 v3, 0x2000000

    .line 2082
    :cond_1
    new-array v0, v3, [D

    .line 2083
    .local v0, "a":[D
    const/4 v2, 0x0

    .line 2084
    .local v2, "j":I
    :cond_2
    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_3

    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2085
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    .line 2086
    iget-wide v6, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 2087
    iget-wide v6, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2088
    :cond_4
    new-instance v6, Ljava/util/Spliterators$DoubleArraySpliterator;

    iget v7, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 2090
    .end local v0    # "a":[D
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 2073
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 2073
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
