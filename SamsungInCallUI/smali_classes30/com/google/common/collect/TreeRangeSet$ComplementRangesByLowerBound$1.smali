.class Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/common/collect/Cut",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;>;"
    }
.end annotation


# instance fields
.field nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

.field final synthetic val$firstComplementRangeLowerBound:Lcom/google/common/collect/Cut;

.field final synthetic val$positiveItr:Lcom/google/common/collect/PeekingIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lcom/google/common/collect/Cut;Lcom/google/common/collect/PeekingIterator;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->this$0:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$firstComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$firstComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->this$0:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    # getter for: Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lcom/google/common/collect/Range;
    invoke-static {v2}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->endOfData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->val$positiveItr:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    iget-object v3, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v3}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v2, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iput-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    :goto_1
    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->nextComplementRangeLowerBound:Lcom/google/common/collect/Cut;

    goto :goto_1
.end method
