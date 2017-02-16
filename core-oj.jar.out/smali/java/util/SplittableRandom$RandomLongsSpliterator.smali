.class final Ljava/util/SplittableRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J

.field final rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava/util/SplittableRandom;JJJJ)V
    .locals 0
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 897
    iput-wide p6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 895
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 911
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .prologue
    .line 907
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 926
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 927
    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 928
    :cond_0
    iget-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 929
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_2

    .line 930
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 931
    iget-object v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    .line 932
    .local v8, "r":Ljava/util/SplittableRandom;
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    .local v6, "o":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 934
    .local v0, "b":J
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 935
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1

    .line 926
    .end local v0    # "b":J
    .end local v6    # "o":J
    .end local v8    # "r":Ljava/util/SplittableRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 915
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 916
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 917
    :cond_0
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 918
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 919
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 920
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 921
    const/4 v4, 0x1

    return v4

    .line 923
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/SplittableRandom$RandomLongsSpliterator;
    .locals 10

    .prologue
    .line 901
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 902
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 903
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    iget-object v1, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava/util/SplittableRandom;

    invoke-virtual {v1}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v1

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    goto :goto_0
.end method
