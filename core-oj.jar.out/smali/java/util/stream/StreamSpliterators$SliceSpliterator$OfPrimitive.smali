.class abstract Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator",
        "<TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJ)V
    .locals 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    const-wide/16 v6, 0x0

    invoke-interface {p1}, Ljava/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V

    .line 762
    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    .line 767
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Spliterator$OfPrimitive;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method


# virtual methods
.method protected abstract emptyConsumer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_CONS;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v4, 0x1

    .line 792
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 795
    return-void

    .line 797
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 798
    return-void

    .line 800
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Ljava/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 802
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 803
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 791
    :cond_2
    return-void

    .line 806
    :cond_3
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 807
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 808
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    .line 811
    :cond_4
    :goto_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 812
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 811
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_1
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 773
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 776
    return v4

    .line 778
    :cond_0
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 779
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 780
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    .line 783
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 784
    return v4

    .line 786
    :cond_2
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 787
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 634
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_SPLITR;TT_CONS;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
