.class final Ljava/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Ljava/util/PrimitiveIterator$OfLong;I)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p2, "characteristics"    # I

    .prologue
    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 1974
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1975
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 1972
    return-void
.end method

.method public constructor <init>(Ljava/util/PrimitiveIterator$OfLong;JI)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .prologue
    .line 1955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1956
    iput-object p1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 1957
    iput-wide p2, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1958
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    .line 1959
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 p4, v0, 0x4000

    .line 1958
    .end local p4    # "characteristics":I
    :cond_0
    iput p4, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 1955
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 2021
    iget v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 2017
    iget-wide v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 2000
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 2001
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2002
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 2000
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2025
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    const/4 v0, 0x0

    return-object v0

    .line 2027
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 2006
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 2007
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2008
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 2010
    const/4 v0, 0x1

    return v0

    .line 2012
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 10

    .prologue
    .line 1980
    iget-object v1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 1981
    .local v1, "i":Ljava/util/PrimitiveIterator$OfLong;
    iget-wide v4, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1982
    .local v4, "s":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1983
    iget v6, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    .line 1984
    .local v3, "n":I
    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 1985
    long-to-int v3, v4

    .line 1986
    :cond_0
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_1

    .line 1987
    const/high16 v3, 0x2000000

    .line 1988
    :cond_1
    new-array v0, v3, [J

    .line 1989
    .local v0, "a":[J
    const/4 v2, 0x0

    .line 1990
    .local v2, "j":I
    :cond_2
    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v6

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_3

    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1991
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->batch:I

    .line 1992
    iget-wide v6, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1993
    iget-wide v6, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1994
    :cond_4
    new-instance v6, Ljava/util/Spliterators$LongArraySpliterator;

    iget v7, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    .line 1996
    .end local v0    # "a":[J
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 1979
    invoke-virtual {p0}, Ljava/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1979
    invoke-virtual {p0}, Ljava/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
