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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

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

    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJJJLjava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;)V
    .locals 0

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

    const-wide/16 v4, 0x1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

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

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    :cond_4
    :goto_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

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

    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return v4

    :cond_0
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    return v4

    :cond_2
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
