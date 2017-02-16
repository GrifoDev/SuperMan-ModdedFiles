.class abstract Ljava/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConcatSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfInt;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfLong;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;,
        Ljava/util/stream/Streams$ConcatSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final aSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field protected final bSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field beforeSplit:Z

.field final unsized:Z


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava/util/Spliterator;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava/util/Spliterator;, "TT_SPLITR;"
    const/4 v0, 0x1

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    .line 709
    iput-object p2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    .line 710
    iput-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 713
    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    invoke-interface {p2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->unsized:Z

    .line 707
    return-void

    .line 713
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .prologue
    .line 761
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v1, v0

    .line 765
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4040

    .line 764
    :goto_0
    or-int/lit8 v0, v0, 0x5

    not-int v0, v0

    .line 763
    and-int/2addr v0, v1

    return v0

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 768
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    .prologue
    .line 748
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v2, :cond_1

    .line 751
    iget-object v2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    iget-object v4, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 752
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .end local v0    # "size":J
    :goto_0
    return-wide v0

    .restart local v0    # "size":J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 755
    .end local v0    # "size":J
    :cond_1
    iget-object v2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    return-wide v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 743
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 740
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 729
    .local v0, "hasNext":Z
    if-nez v0, :cond_0

    .line 730
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 731
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .line 736
    :cond_0
    :goto_0
    return v0

    .line 735
    .end local v0    # "hasNext":Z
    :cond_1
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    .restart local v0    # "hasNext":Z
    goto :goto_0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    .line 720
    .local v0, "ret":Ljava/util/Spliterator;, "TT_SPLITR;"
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 721
    return-object v0

    .line 719
    .end local v0    # "ret":Ljava/util/Spliterator;, "TT_SPLITR;"
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .restart local v0    # "ret":Ljava/util/Spliterator;, "TT_SPLITR;"
    goto :goto_0
.end method
