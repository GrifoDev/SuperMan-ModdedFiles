.class final Ljava/util/IdentityHashMap$EntrySpliterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
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
        "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    if-ltz v1, :cond_0

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v2}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v0, 0x40

    :cond_1
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    iget-object v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v1

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    array-length v7, v0

    if-gt v1, v7, :cond_3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v0, v7

    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v7, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v7

    iget v8, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    if-ne v7, v8, :cond_3

    return-void

    :cond_3
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v1

    :cond_1
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    if-ge v5, v1, :cond_3

    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    aget-object v3, v0, v5

    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v0, v5

    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v2, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v5

    iget v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    :cond_2
    const/4 v5, 0x1

    return v5

    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method public trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v6

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    add-int v0, v2, v6

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v3, v0, -0x2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method
