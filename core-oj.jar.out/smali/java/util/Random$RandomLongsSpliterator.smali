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
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # J
    .param p8, "bound"    # J

    .prologue
    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-object p1, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iput-wide p2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    .line 1066
    iput-wide p6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    .line 1064
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1080
    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .prologue
    .line 1076
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 1095
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Random$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1096
    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 1097
    :cond_0
    iget-wide v4, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    .line 1098
    .local v2, "f":J
    cmp-long v9, v4, v2

    if-gez v9, :cond_2

    .line 1099
    iput-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .line 1100
    iget-object v8, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    .line 1101
    .local v8, "r":Ljava/util/Random;
    iget-wide v6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    .local v6, "o":J
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    .line 1103
    .local v0, "b":J
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/Random;->internalNextLong(JJ)J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1104
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    cmp-long v9, v4, v2

    if-ltz v9, :cond_1

    .line 1095
    .end local v0    # "b":J
    .end local v6    # "o":J
    .end local v8    # "r":Ljava/util/Random;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    .prologue
    .line 1084
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Random$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1085
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1086
    :cond_0
    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    .line 1087
    .local v0, "f":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 1088
    iget-object v4, p0, Ljava/util/Random$RandomLongsSpliterator;->rng:Ljava/util/Random;

    iget-wide v6, p0, Ljava/util/Random$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava/util/Random$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/Random;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1089
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .line 1090
    const/4 v4, 0x1

    return v4

    .line 1092
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public trySplit()Ljava/util/Random$RandomLongsSpliterator;
    .locals 10

    .prologue
    .line 1070
    iget-wide v2, p0, Ljava/util/Random$RandomLongsSpliterator;->index:J

    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v6, 0x1

    ushr-long v4, v0, v6

    .line 1071
    .local v4, "m":J
    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1072
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

    .prologue
    .line 1069
    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 1069
    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1069
    invoke-virtual {p0}, Ljava/util/Random$RandomLongsSpliterator;->trySplit()Ljava/util/Random$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method
