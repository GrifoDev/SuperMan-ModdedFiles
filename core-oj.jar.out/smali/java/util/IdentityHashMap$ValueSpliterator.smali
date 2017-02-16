.class final Ljava/util/IdentityHashMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1480
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1479
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1529
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
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    .line 1492
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1495
    :cond_0
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    .local v3, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 1496
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_3

    .line 1497
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1498
    aget-object v5, v0, v2

    if-eqz v5, :cond_1

    .line 1499
    add-int/lit8 v5, v2, 0x1

    aget-object v4, v0, v5

    .line 1500
    .local v4, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1497
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1503
    :cond_2
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v5

    iget v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_3

    .line 1504
    return-void

    .line 1506
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_3
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1510
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    .line 1511
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1512
    :cond_0
    iget-object v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v4}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    .line 1513
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v1

    .line 1514
    .local v1, "hi":I
    :cond_1
    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    if-ge v4, v1, :cond_3

    .line 1515
    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    aget-object v2, v0, v4

    .line 1516
    .local v2, "key":Ljava/lang/Object;
    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v0, v4

    .line 1517
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .line 1518
    if-eqz v2, :cond_1

    .line 1519
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1520
    iget-object v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v4}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v4

    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_2

    .line 1521
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1522
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 1525
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public trySplit()Ljava/util/IdentityHashMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1484
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v3, v0, -0x2

    .line 1485
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1486
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1487
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1486
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1483
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->trySplit()Ljava/util/IdentityHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method
