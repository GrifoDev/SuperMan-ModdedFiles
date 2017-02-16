.class final Ljava/util/stream/SortedOps$DoubleSortingSink;
.super Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSortingSink"
.end annotation


# instance fields
.field private b:Ljava/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 667
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .prologue
    .line 698
    iget-object v0, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 697
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 673
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfDouble;

    .line 672
    return-void

    .line 675
    :cond_1
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    goto :goto_0
.end method

.method public end()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 680
    iget-object v4, p0, Ljava/util/stream/SortedOps$DoubleSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 681
    .local v2, "doubles":[D
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    .line 682
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    array-length v5, v2

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Ljava/util/stream/Sink;->begin(J)V

    .line 683
    iget-boolean v4, p0, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;->cancellationWasRequested:Z

    if-nez v4, :cond_0

    .line 684
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v0, v2, v3

    .line 685
    .local v0, "aDouble":D
    iget-object v5, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v5, v0, v1}, Ljava/util/stream/Sink;->accept(D)V

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v0    # "aDouble":D
    :cond_0
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-wide v0, v2, v3

    .line 689
    .restart local v0    # "aDouble":D
    iget-object v5, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v5}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 693
    .end local v0    # "aDouble":D
    :cond_1
    iget-object v3, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v3}, Ljava/util/stream/Sink;->end()V

    .line 679
    return-void

    .line 690
    .restart local v0    # "aDouble":D
    :cond_2
    iget-object v5, p0, Ljava/util/stream/Sink$ChainedDouble;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v5, v0, v1}, Ljava/util/stream/Sink;->accept(D)V

    .line 688
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
