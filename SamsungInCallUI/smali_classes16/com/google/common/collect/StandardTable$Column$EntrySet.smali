.class Lcom/google/common/collect/StandardTable$Column$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 0

    .prologue
    .line 454
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/StandardTable$Column;
    .param p2, "x1"    # Lcom/google/common/collect/StandardTable$1;

    .prologue
    .line 454
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Column$EntrySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 478
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lcom/google/common/base/Predicate;)Z

    .line 479
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 483
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 484
    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    # invokes: Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 487
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 473
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;-><init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 493
    check-cast v0, Ljava/util/Map$Entry;

    .line 494
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    # invokes: Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 496
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 462
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySet;"
    const/4 v2, 0x0

    .line 463
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 464
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v2
.end method
