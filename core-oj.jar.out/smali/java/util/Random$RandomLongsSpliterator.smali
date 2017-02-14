.class final Ljava/util/Random$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J

.field final rng:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iput-wide p2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    iput-wide p6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 12

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    :cond_0
    iget-wide v4, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    cmp-long v9, v4, v2

    if-gez v9, :cond_2

    iput-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iget-object v8, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iget-wide v6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/Random;->internalNextLong(JJ)J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1

    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Random$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 10

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    iget-object v4, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iget-wide v6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/Random;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public trySplit()Ljava/util/Random$RandomLongsSpliterator;
    .locals 10

    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    iget-object v1, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iput-wide v4, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method
