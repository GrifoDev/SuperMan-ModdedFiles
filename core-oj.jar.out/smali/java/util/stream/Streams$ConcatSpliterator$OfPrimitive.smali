.class abstract Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.super Ljava/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/Streams$ConcatSpliterator",
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
.method private constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;)V
    .locals 0
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
    .line 789
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "aSpliterator":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "bSpliterator":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V

    .line 788
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;)V
    .locals 0
    .param p1, "aSpliterator"    # Ljava/util/Spliterator$OfPrimitive;
    .param p2, "bSpliterator"    # Ljava/util/Spliterator$OfPrimitive;

    .prologue
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 811
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 808
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    iget-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 797
    .local v0, "hasNext":Z
    if-nez v0, :cond_0

    .line 798
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 799
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .line 804
    :cond_0
    :goto_0
    return v0

    .line 803
    .end local v0    # "hasNext":Z
    :cond_1
    iget-object v1, p0, Ljava/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "hasNext":Z
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Ljava/util/stream/Streams$ConcatSpliterator$OfPrimitive;, "Ljava/util/stream/Streams$ConcatSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
