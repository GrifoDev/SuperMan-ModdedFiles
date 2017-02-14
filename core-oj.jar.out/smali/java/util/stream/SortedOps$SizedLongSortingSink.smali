.class final Ljava/util/stream/SortedOps$SizedLongSortingSink;
.super Ljava/util/stream/SortedOps$AbstractLongSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedLongSortingSink"
.end annotation


# instance fields
.field private array:[J

.field private offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractLongSortingSink;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    iget v1, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    aput-wide p1, v0, v1

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
    long-to-int v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    return-void
.end method

.method public end()V
    .locals 4

    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    iget v2, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([JII)V

    iget-object v1, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    iget v2, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    iget-boolean v1, p0, Ljava/util/stream/SortedOps$AbstractLongSortingSink;->cancellationWasRequested:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->offset:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    return-void

    :cond_2
    iget-object v1, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedLongSortingSink;->array:[J

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
