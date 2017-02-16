.class final Ljava/util/SplittableRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D

.field final rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava/util/SplittableRandom;JJDD)V
    .locals 0
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 954
    iput-wide p6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 952
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 968
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .prologue
    .line 964
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 983
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 984
    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 985
    :cond_0
    iget-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 986
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_2

    .line 987
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 988
    iget-object v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    .line 989
    .local v8, "r":Ljava/util/SplittableRandom;
    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    .local v6, "o":D
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    .line 991
    .local v0, "b":D
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 992
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1

    .line 983
    .end local v0    # "b":D
    .end local v6    # "o":D
    .end local v8    # "r":Ljava/util/SplittableRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 972
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 973
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 974
    :cond_0
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    .line 975
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 976
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 977
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .line 978
    const/4 v4, 0x1

    return v4

    .line 980
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/SplittableRandom$RandomDoublesSpliterator;
    .locals 10

    .prologue
    .line 958
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 959
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 960
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    iget-object v1, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava/util/SplittableRandom;

    invoke-virtual {v1}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v1

    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    goto :goto_0
.end method
