.class abstract Lcom/google/common/collect/Maps$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3875
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3885
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3886
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    const/4 v3, 0x0

    .line 3890
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 3891
    check-cast v0, Ljava/util/Map$Entry;

    .line 3892
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3893
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3894
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 3896
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3901
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method abstract map()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3906
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3907
    check-cast v0, Ljava/util/Map$Entry;

    .line 3908
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 3910
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3916
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, v1}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3919
    :goto_0
    return v1

    .line 3917
    :catch_0
    move-exception v0

    .line 3919
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v1

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3926
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-super {p0, v5}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 3936
    :goto_0
    return v5

    .line 3927
    :catch_0
    move-exception v0

    .line 3929
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v3

    .line 3930
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3931
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 3932
    check-cast v1, Ljava/util/Map$Entry;

    .line 3933
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3936
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3880
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
