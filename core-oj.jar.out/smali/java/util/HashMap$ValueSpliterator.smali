.class final Ljava/util/HashMap$ValueSpliterator;
.super Ljava/util/HashMap$HashMapSpliterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
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
        "Ljava/util/HashMap$HashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/HashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/HashMap$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    if-ltz v0, :cond_0

    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    iget-object v2, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->size:I

    if-ne v0, v2, :cond_2

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget-object v2, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    instance-of v2, v2, Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    const/16 v1, 0x10

    :cond_1
    or-int/2addr v0, v1

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    :cond_0
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iget-object v6, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    if-gez v0, :cond_4

    iget v4, v3, Ljava/util/HashMap;->modCount:I

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    if-nez v6, :cond_3

    move v0, v7

    :goto_0
    iput v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    :goto_1
    if-eqz v6, :cond_7

    array-length v7, v6

    if-lt v7, v0, :cond_7

    iget v1, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    if-ltz v1, :cond_7

    iput v0, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    if-lt v1, v0, :cond_1

    iget-object v7, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    if-eqz v7, :cond_7

    :cond_1
    iget-object v5, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    iput-object v8, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    move v2, v1

    :goto_2
    if-nez v5, :cond_5

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v6, v2

    :goto_3
    if-nez v5, :cond_2

    if-ge v1, v0, :cond_6

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    array-length v0, v6

    goto :goto_0

    :cond_4
    iget v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    goto :goto_1

    :cond_5
    iget-object v7, v5, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v5, v5, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    move v1, v2

    goto :goto_3

    :cond_6
    iget v7, v3, Ljava/util/HashMap;->modCount:I

    if-eq v7, v4, :cond_7

    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_7
    return-void
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

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iget-object v1, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    if-eqz v1, :cond_4

    array-length v3, v1

    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    move-result v0

    if-lt v3, v0, :cond_4

    iget v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    if-ltz v3, :cond_4

    :goto_0
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    if-nez v3, :cond_1

    iget v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    if-ge v3, v0, :cond_4

    :cond_1
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    if-nez v3, :cond_2

    iget v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    aget-object v3, v1, v3

    iput-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    iget-object v2, v3, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    iget-object v3, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v3, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iget v3, v3, Ljava/util/HashMap;->modCount:I

    iget v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_3
    const/4 v3, 0x1

    return v3

    :cond_4
    return v5
.end method

.method public trySplit()Ljava/util/HashMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    move-result v6

    iget v2, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    add-int v1, v2, v6

    ushr-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_0

    iget-object v1, p0, Ljava/util/HashMap$HashMapSpliterator;->current:Ljava/util/HashMap$HashMapEntry;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iput v3, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    iget v5, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$ValueSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/HashMap$ValueSpliterator;->trySplit()Ljava/util/HashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method
