.class final Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
.super Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/function/Supplier;)V
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Supplier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1348
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfRef<TT;>;"
    .local p3, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1349
    iput-object p3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    .line 1347
    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1354
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1357
    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1362
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfRef<TT;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1363
    const/4 v0, 0x0

    return-object v0

    .line 1364
    :cond_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    const/4 v1, 0x1

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava/util/function/Supplier;)V

    return-object v0
.end method
