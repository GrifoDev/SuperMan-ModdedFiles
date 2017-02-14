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

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    iput-object p2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    iput-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

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

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v1, v0

    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4040

    :goto_0
    or-int/lit8 v0, v0, 0x5

    not-int v0, v0

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    iget-boolean v2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    iget-object v4, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    add-long v0, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

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

    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

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

    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

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

    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

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

    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    goto :goto_0
.end method
