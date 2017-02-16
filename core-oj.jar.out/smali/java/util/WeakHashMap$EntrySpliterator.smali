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
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1235
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1234
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1311
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
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

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v11, 0x0

    .line 1248
    if-nez p1, :cond_0

    .line 1249
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1250
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1251
    .local v4, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v7, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1252
    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_3

    .line 1253
    iget v5, v4, Ljava/util/WeakHashMap;->modCount:I

    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1254
    .local v5, "mc":I
    array-length v0, v7

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .line 1258
    .restart local v0    # "hi":I
    :goto_0
    array-length v10, v7

    if-lt v10, v0, :cond_5

    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .local v1, "i":I
    if-ltz v1, :cond_5

    .line 1259
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-lt v1, v0, :cond_1

    iget-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v10, :cond_5

    .line 1260
    :cond_1
    iget-object v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1261
    .local v6, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v11, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    .line 1263
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-nez v6, :cond_4

    .line 1264
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    .line 1276
    :goto_2
    if-nez v6, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1257
    .end local v2    # "i":I
    .end local v5    # "mc":I
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .restart local v5    # "mc":I
    goto :goto_0

    .line 1266
    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 1267
    .local v9, "x":Ljava/lang/Object;
    iget-object v8, v6, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1268
    .local v8, "v":Ljava/lang/Object;, "TV;"
    iget-object v6, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1269
    if-eqz v9, :cond_7

    .line 1271
    invoke-static {v9}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1273
    .local v3, "k":Ljava/lang/Object;, "TK;"
    new-instance v10, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v10, v3, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1272
    invoke-interface {p1, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1278
    .end local v1    # "i":I
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    .end local v9    # "x":Ljava/lang/Object;
    :cond_5
    iget v10, v4, Ljava/util/WeakHashMap;->modCount:I

    if-eq v10, v5, :cond_6

    .line 1279
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1246
    :cond_6
    return-void

    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v8    # "v":Ljava/lang/Object;, "TV;"
    .restart local v9    # "x":Ljava/lang/Object;
    :cond_7
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
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

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v7, 0x0

    .line 1284
    if-nez p1, :cond_0

    .line 1285
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1286
    :cond_0
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v2, v5, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1287
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v2

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    if-lt v5, v0, :cond_5

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v5, :cond_5

    .line 1288
    :cond_1
    :goto_0
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v5, :cond_2

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ge v5, v0, :cond_5

    .line 1289
    :cond_2
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v5, :cond_3

    .line 1290
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    aget-object v5, v2, v5

    iput-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 1292
    :cond_3
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 1293
    .local v4, "x":Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v3, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1294
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1295
    if-eqz v4, :cond_1

    .line 1297
    invoke-static {v4}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1299
    .local v1, "k":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1298
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1300
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget v5, v5, Ljava/util/WeakHashMap;->modCount:I

    iget v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    if-eq v5, v6, :cond_4

    .line 1301
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1302
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 1307
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "x":Ljava/lang/Object;
    :cond_5
    return v7
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1238
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
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

    .prologue
    .line 1239
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v3, v0, 0x1

    .line 1240
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1241
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1242
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1241
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$EntrySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_0
.end method
