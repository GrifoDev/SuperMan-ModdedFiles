.class public Landroid/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
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
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-gtz p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 80
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 287
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 288
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_0
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 349
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->trimToSize(I)V

    .line 307
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 363
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 119
    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 120
    return-object v1

    .line 122
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/util/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 132
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    .line 134
    return-object v3

    .line 116
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    monitor-enter p0

    .line 138
    :try_start_2
    iget v2, p0, Landroid/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->createCount:I

    .line 139
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_3

    .line 143
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    .line 149
    if-eqz v1, :cond_4

    .line 150
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    return-object v1

    .line 145
    :cond_3
    :try_start_3
    iget v2, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 137
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 153
    :cond_4
    iget v2, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Landroid/util/LruCache;->trimToSize(I)V

    .line 154
    return-object v0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 334
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 326
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 342
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    monitor-enter p0

    .line 171
    :try_start_0
    iget v1, p0, Landroid/util/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->putCount:I

    .line 172
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 173
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 175
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 179
    if-eqz v0, :cond_3

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :cond_3
    iget v1, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 184
    return-object v0

    .line 170
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    .line 238
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 242
    if-eqz v0, :cond_2

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v3}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    :cond_2
    return-object v0

    .line 235
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 94
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    if-gtz p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    monitor-enter p0

    .line 99
    :try_start_0
    iput p1, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 101
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 93
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 317
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 371
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 375
    :try_start_0
    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    iget v3, p0, Landroid/util/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 376
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 377
    .local v1, "hitPercent":I
    :goto_0
    const-string/jumbo v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 378
    iget v4, p0, Landroid/util/LruCache;->maxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/util/LruCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Landroid/util/LruCache;->missCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 377
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 376
    .end local v1    # "hitPercent":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hitPercent":I
    goto :goto_0

    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .locals 6
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v5, 0x0

    .line 198
    :goto_0
    monitor-enter p0

    .line 199
    :try_start_0
    iget v3, p0, Landroid/util/LruCache;->size:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/util/LruCache;->size:I

    if-eqz v3, :cond_1

    .line 200
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/LruCache;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    .line 200
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 204
    :cond_1
    :try_start_1
    iget v3, p0, Landroid/util/LruCache;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, p1, :cond_3

    :cond_2
    monitor-exit p0

    .line 194
    return-void

    .line 208
    :cond_3
    :try_start_2
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v1

    .line 209
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v1, :cond_2

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget v3, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/util/LruCache;->size:I

    .line 217
    iget v3, p0, Landroid/util/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 220
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v2, v5}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
