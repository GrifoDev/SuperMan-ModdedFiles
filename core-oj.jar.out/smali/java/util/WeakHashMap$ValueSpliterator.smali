.class final Ljava/util/WeakHashMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "<TV;>;"
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

    const/4 v0, 0x0

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    :cond_0
    iget-object v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v6, v3, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    if-gez v0, :cond_3

    iget v4, v3, Ljava/util/WeakHashMap;->modCount:I

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    array-length v0, v6

    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    :goto_0
    array-length v9, v6

    if-lt v9, v0, :cond_5

    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v1, :cond_5

    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-lt v1, v0, :cond_1

    iget-object v9, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v9, :cond_5

    :cond_1
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iput-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    :goto_1
    if-nez v5, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v6, v2

    :goto_2
    if-nez v5, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    if-eqz v8, :cond_7

    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_2

    :cond_5
    iget v9, v3, Ljava/util/WeakHashMap;->modCount:I

    if-eq v9, v4, :cond_6

    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v1, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v1

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v0

    if-lt v4, v0, :cond_5

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v4, :cond_5

    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_2

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ge v4, v0, :cond_5

    :cond_2
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_3

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    aget-object v4, v1, v4

    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v2, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_4
    const/4 v4, 0x1

    return v4

    :cond_5
    return v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueSpliterator;->trySplit()Ljava/util/WeakHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$ValueSpliterator",
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
    new-instance v0, Ljava/util/WeakHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_0
.end method
