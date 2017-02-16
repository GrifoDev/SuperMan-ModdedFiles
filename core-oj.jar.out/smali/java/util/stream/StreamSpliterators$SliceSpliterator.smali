.class abstract Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field fence:J

.field index:J

.field s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->-assertionsDisabled:Z

    .line 610
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;JJJJ)V
    .locals 2
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
    .line 623
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    sget-boolean v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 625
    :cond_0
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    .line 626
    iput-wide p2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    .line 627
    iput-wide p4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    .line 628
    iput-wide p6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 629
    iput-wide p8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 623
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 686
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    .prologue
    .line 681
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 682
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 681
    :goto_0
    return-wide v0

    .line 682
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    const/4 v6, 0x0

    .line 635
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 636
    return-object v6

    .line 638
    :cond_0
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 639
    return-object v6

    .line 652
    .local v1, "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    :cond_1
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    add-long v10, v2, v4

    .line 653
    .local v10, "leftSplitFenceUnbounded":J
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 654
    .local v8, "leftSplitFence":J
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v2, v8

    if-ltz v0, :cond_3

    .line 658
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 648
    .end local v1    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    .end local v8    # "leftSplitFence":J
    .end local v10    # "leftSplitFenceUnbounded":J
    :cond_2
    :goto_0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v1

    .line 649
    .restart local v1    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v1, :cond_1

    .line 650
    return-object v6

    .line 660
    .restart local v8    # "leftSplitFence":J
    .restart local v10    # "leftSplitFenceUnbounded":J
    :cond_3
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v8, v2

    if-ltz v0, :cond_4

    .line 664
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    .line 665
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    goto :goto_0

    .line 667
    :cond_4
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v10, v2

    if-gtz v0, :cond_5

    .line 670
    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 671
    return-object v1

    .line 675
    :cond_5
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide v8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
