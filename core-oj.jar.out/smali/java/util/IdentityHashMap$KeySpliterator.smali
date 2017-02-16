.class final Ljava/util/IdentityHashMap$KeySpliterator;
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
    name = "KeySpliterator"
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
        "<TK;>;"
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
    .line 1423
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1422
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1471
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_0

    .line 1436
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1439
    :cond_0
    iget-object v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    .local v4, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 1440
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_3

    .line 1441
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1442
    aget-object v3, v0, v2

    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 1443
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1441
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1445
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2
    invoke-static {v4}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v5

    iget v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_3

    .line 1446
    return-void

    .line 1448
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_3
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 1453
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_0

    .line 1454
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1455
    :cond_0
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v3}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    .line 1456
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v1

    .line 1457
    .local v1, "hi":I
    :cond_1
    iget v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    if-ge v3, v1, :cond_3

    .line 1458
    iget v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    aget-object v2, v0, v3

    .line 1459
    .local v2, "key":Ljava/lang/Object;
    iget v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .line 1460
    if-eqz v2, :cond_1

    .line 1461
    invoke-static {v2}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1462
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v3}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v3

    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_2

    .line 1463
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1464
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 1467
    .end local v2    # "key":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public trySplit()Ljava/util/IdentityHashMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1427
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v3, v0, -0x2

    .line 1428
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1429
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1430
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1429
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1426
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->trySplit()Ljava/util/IdentityHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method
