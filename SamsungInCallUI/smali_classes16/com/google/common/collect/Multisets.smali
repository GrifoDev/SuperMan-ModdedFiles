.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,
        Lcom/google/common/collect/Multisets$EntrySet;,
        Lcom/google/common/collect/Multisets$ElementSet;,
        Lcom/google/common/collect/Multisets$AbstractEntry;,
        Lcom/google/common/collect/Multisets$FilteredMultiset;,
        Lcom/google/common/collect/Multisets$ImmutableEntry;,
        Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
    }
.end annotation


# static fields
.field private static final DECREASING_COUNT_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1108
    new-instance v0, Lcom/google/common/collect/Multisets$5;

    invoke-direct {v0}, Lcom/google/common/collect/Multisets$5;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets;->DECREASING_COUNT_ORDERING:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 873
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    const/4 v3, 0x0

    .line 884
    :goto_0
    return v3

    .line 876
    :cond_0
    instance-of v3, p1, Lcom/google/common/collect/Multiset;

    if-eqz v3, :cond_1

    .line 877
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v2

    .line 878
    .local v2, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 879
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-interface {p0, v3, v4}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 882
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 884
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method public static containsOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "superMultiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "subMultiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 658
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 659
    .local v2, "superCount":I
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 660
    const/4 v3, 0x0

    .line 663
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "superCount":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static copyHighestCountFirst(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1124
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    sget-object v1, Lcom/google/common/collect/Multisets;->DECREASING_COUNT_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1126
    .local v0, "sortedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static difference(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v0, Lcom/google/common/collect/Multisets$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$4;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static equalsImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 845
    if-ne p1, p0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v3

    .line 848
    :cond_1
    instance-of v5, p1, Lcom/google/common/collect/Multiset;

    if-eqz v5, :cond_5

    move-object v2, p1

    .line 849
    check-cast v2, Lcom/google/common/collect/Multiset;

    .line 856
    .local v2, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 857
    goto :goto_0

    .line 859
    :cond_3
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 860
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 861
    goto :goto_0

    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    :cond_5
    move v3, v4

    .line 866
    goto :goto_0
.end method

.method public static filter(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multiset;
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 282
    .local p0, "unfiltered":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v2, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 285
    check-cast v1, Lcom/google/common/collect/Multisets$FilteredMultiset;

    .line 286
    .local v1, "filtered":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 287
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    new-instance v2, Lcom/google/common/collect/Multisets$FilteredMultiset;

    iget-object v3, v1, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-direct {v2, v3, v0}, Lcom/google/common/collect/Multisets$FilteredMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    .line 289
    .end local v0    # "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    .end local v1    # "filtered":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/common/collect/Multisets$FilteredMultiset;

    invoke-direct {v2, p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 375
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 377
    :goto_0
    return v0

    .restart local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static intersection(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v0, Lcom/google/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$2;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 896
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 891
    goto :goto_0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "occurrencesToRemove":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "changed":Z
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 783
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/collect/Multiset$Entry<*>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 784
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 785
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 786
    .local v3, "removeCount":I
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 787
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 788
    const/4 v0, 0x1

    goto :goto_0

    .line 789
    :cond_1
    if-lez v3, :cond_0

    .line 790
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    .line 791
    const/4 v0, 0x1

    goto :goto_0

    .line 794
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v3    # "removeCount":I
    :cond_2
    return v0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v3, p1, Lcom/google/common/collect/Multiset;

    if-eqz v3, :cond_1

    .line 741
    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result v0

    .line 749
    :cond_0
    return v0

    .line 743
    .restart local p1    # "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 747
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {p0, v2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 748
    goto :goto_0
.end method

.method static retainAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 909
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 904
    goto :goto_0
.end method

.method public static retainOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "multisetToRetain":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->retainOccurrencesImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result v0

    return v0
.end method

.method private static retainOccurrencesImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "occurrencesToRetain":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 699
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    const/4 v0, 0x0

    .line 700
    .local v0, "changed":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 702
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 703
    .local v3, "retainCount":I
    if-nez v3, :cond_1

    .line 704
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 705
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :cond_1
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 707
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 708
    const/4 v0, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v3    # "retainCount":I
    :cond_2
    return v0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 918
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 920
    .local v1, "oldCount":I
    sub-int v0, p2, v1

    .line 921
    .local v0, "delta":I
    if-lez v0, :cond_1

    .line 922
    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 927
    :cond_0
    :goto_0
    return v1

    .line 923
    :cond_1
    if-gez v0, :cond_0

    .line 924
    neg-int v2, v0

    invoke-interface {p0, p1, v2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 935
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 937
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 938
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 939
    const/4 v0, 0x1

    .line 941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sizeImpl(Lcom/google/common/collect/Multiset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    const-wide/16 v2, 0x0

    .line 1095
    .local v2, "size":J
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 1096
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1097
    goto :goto_0

    .line 1098
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method

.method public static sum(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v0, Lcom/google/common/collect/Multisets$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$3;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static union(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Lcom/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$1;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    .local p0, "multiset":Lcom/google/common/collect/ImmutableMultiset;, "Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    instance-of v1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    move-object v0, p0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/Multiset;)V

    goto :goto_0
.end method

.method public static unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "sortedMultiset":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    new-instance v1, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    invoke-direct {v1, v0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v1
.end method
