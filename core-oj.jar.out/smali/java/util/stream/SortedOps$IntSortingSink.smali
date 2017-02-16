.class final Ljava/util/stream/SortedOps$IntSortingSink;
.super Ljava/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSortingSink"
.end annotation


# instance fields
.field private b:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 471
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 502
    iget-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 501
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 477
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    .line 476
    return-void

    .line 479
    :cond_1
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    goto :goto_0
.end method

.method public end()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v3, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 485
    .local v1, "ints":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 486
    iget-object v3, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    array-length v4, v1

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Ljava/util/stream/Sink;->begin(J)V

    .line 487
    iget-boolean v3, p0, Ljava/util/stream/SortedOps$AbstractIntSortingSink;->cancellationWasRequested:Z

    if-nez v3, :cond_0

    .line 488
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 489
    .local v0, "anInt":I
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4, v0}, Ljava/util/stream/Sink;->accept(I)V

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "anInt":I
    :cond_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 493
    .restart local v0    # "anInt":I
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    .end local v0    # "anInt":I
    :cond_1
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->end()V

    .line 483
    return-void

    .line 494
    .restart local v0    # "anInt":I
    :cond_2
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4, v0}, Ljava/util/stream/Sink;->accept(I)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
