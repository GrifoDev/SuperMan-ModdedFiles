.class Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3182
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3183
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    .line 3184
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 3182
    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .locals 3
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 3292
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    const/4 v1, 0x0

    .line 3294
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3295
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 3297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3298
    const/4 v1, 0x1

    goto :goto_0

    .line 3301
    :cond_1
    return v1
.end method

.method static checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry",
            "<TK;TV;TT;>;"
        }
    .end annotation

    .prologue
    .line 3316
    .local p0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 3193
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3194
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 3197
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3191
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3259
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 3260
    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    .line 3261
    check-cast v0, Ljava/util/Map$Entry;

    .line 3262
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    .line 3263
    instance-of v2, v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    if-eqz v2, :cond_1

    .line 3262
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3263
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    iget-object v2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3272
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3273
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3274
    const/4 v2, 0x0

    return v2

    .line 3275
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    const/4 v1, 0x0

    .line 3305
    if-ne p1, p0, :cond_0

    .line 3306
    const/4 v1, 0x1

    return v1

    .line 3307
    :cond_0
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_1

    .line 3308
    return v1

    :cond_1
    move-object v0, p1

    .line 3309
    check-cast v0, Ljava/util/Set;

    .line 3310
    .local v0, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3311
    invoke-virtual {p0, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .line 3310
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3190
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3188
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3201
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3202
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 3204
    .local v1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v2, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;-><init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;Ljava/lang/Class;)V

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3279
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3280
    const/4 v0, 0x0

    return v0

    .line 3281
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 3282
    check-cast p1, Ljava/util/Map$Entry;

    .line 3281
    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3286
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3289
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3187
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 3217
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 3223
    .local v2, "source":[Ljava/lang/Object;
    const-class v3, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    .line 3224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 3223
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3224
    move-object v0, v2

    .line 3227
    .local v0, "dest":[Ljava/lang/Object;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3228
    aget-object v3, v2, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 3229
    iget-object v4, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 3228
    invoke-static {v3, v4}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v0, v1

    .line 3227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3225
    .end local v0    # "dest":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Object;

    .restart local v0    # "dest":[Ljava/lang/Object;
    goto :goto_0

    .line 3230
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 3238
    iget-object v3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    array-length v2, p1

    if-nez v2, :cond_0

    move-object v2, p1

    :goto_0
    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 3240
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3241
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 3242
    iget-object v3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 3241
    invoke-static {v2, v3}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3238
    .end local v0    # "arr":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 3243
    .restart local v0    # "arr":[Ljava/lang/Object;, "[TT;"
    .restart local v1    # "i":I
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 3244
    return-object v0

    .line 3246
    :cond_2
    array-length v2, v0

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3247
    array-length v2, p1

    array-length v3, v0

    if-le v2, v3, :cond_3

    .line 3248
    array-length v2, v0

    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 3249
    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3189
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
