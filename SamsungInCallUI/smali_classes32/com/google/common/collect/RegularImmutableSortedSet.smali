.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient elements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private unsafeBinarySearch(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeBinarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    instance-of v7, p1, Lcom/google/common/collect/Multiset;

    if-eqz v7, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-gt v7, v5, :cond_3

    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    :cond_2
    :goto_0
    return v5

    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    move v5, v6

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    :cond_6
    if-lez v0, :cond_4

    move v5, v6

    goto :goto_0

    :catch_1
    move-exception v1

    move v5, v6

    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    instance-of v8, p1, Ljava/util/Set;

    if-nez v8, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    move-object v5, p1

    check-cast v5, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v9

    if-eq v8, v9, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v8, v5}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_4

    :cond_5
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move v6, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move v6, v7

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ge p1, p2, :cond_1

    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p0

    goto :goto_0
.end method

.method headIndex(Ljava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    :goto_0
    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    goto :goto_0
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, -0x1

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v4

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v6, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v3, p1, v4, v5, v6}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailIndex(Ljava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    :goto_0
    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    goto :goto_0
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method unsafeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method
