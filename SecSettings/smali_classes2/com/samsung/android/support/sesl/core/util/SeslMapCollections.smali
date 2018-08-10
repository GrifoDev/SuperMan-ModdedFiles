.class abstract Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;,
        Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, p1, :cond_0

    instance-of v5, p1, Ljava/util/Set;

    if-nez v5, :cond_1

    return v4

    :cond_0
    return v3

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    :goto_0
    move v3, v4

    :cond_2
    return v3

    :cond_3
    invoke-interface {p0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    return v4

    :catch_1
    move-exception v0

    return v4
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    :goto_1
    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    :goto_1
    return v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mEntrySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$EntrySet;

    goto :goto_0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mKeySet:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$KeySet;

    goto :goto_0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->mValues:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ValuesCollection;

    goto :goto_0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    array-length v3, p1

    if-lt v3, v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    array-length v3, p1

    if-gt v3, v0, :cond_2

    :goto_2
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    move-object p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    aput-object v3, p1, v0

    goto :goto_2
.end method
