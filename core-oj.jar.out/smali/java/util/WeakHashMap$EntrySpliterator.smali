.class final Ljava/util/WeakHashMap$EntrySpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    const/4 v11, 0x0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v7, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    if-gez v0, :cond_3

    iget v5, v4, Ljava/util/WeakHashMap;->modCount:I

    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    array-length v0, v7

    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    :goto_0
    array-length v10, v7

    if-lt v10, v0, :cond_5

    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v1, :cond_5

    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-lt v1, v0, :cond_1

    iget-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v10, :cond_5

    :cond_1
    iget-object v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iput-object v11, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    :goto_1
    if-nez v6, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-object v6, v7, v2

    :goto_2
    if-nez v6, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    iget-object v8, v6, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iget-object v6, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    if-eqz v9, :cond_7

    invoke-static {v9}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v10, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v10, v3, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_2

    :cond_5
    iget v10, v4, Ljava/util/WeakHashMap;->modCount:I

    if-eq v10, v5, :cond_6

    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v2, v5, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v2

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v0

    if-lt v5, v0, :cond_5

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v5, :cond_5

    :cond_1
    :goto_0
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v5, :cond_2

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ge v5, v0, :cond_5

    :cond_2
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v5, :cond_3

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    aget-object v5, v2, v5

    iput-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v3, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget v5, v5, Ljava/util/WeakHashMap;->modCount:I

    iget v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    if-eq v5, v6, :cond_4

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    :cond_4
    const/4 v5, 0x1

    return v5

    :cond_5
    return v7
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->trySplit()Ljava/util/WeakHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$EntrySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v6

    iget v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    add-int v0, v2, v6

    ushr-int/lit8 v3, v0, 0x1

    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$EntrySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_0
.end method
