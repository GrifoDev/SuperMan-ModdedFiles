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

    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public begin(J)V
    .locals 3

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    return-void

    :cond_1
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    goto :goto_0
.end method

.method public end()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/stream/SortedOps$IntSortingSink;->b:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    iget-object v3, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    array-length v4, v1

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Ljava/util/stream/Sink;->begin(J)V

    iget-boolean v3, p0, Ljava/util/stream/SortedOps$AbstractIntSortingSink;->cancellationWasRequested:Z

    if-nez v3, :cond_0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4, v0}, Ljava/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v2, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->end()V

    return-void

    :cond_2
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v4, v0}, Ljava/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
