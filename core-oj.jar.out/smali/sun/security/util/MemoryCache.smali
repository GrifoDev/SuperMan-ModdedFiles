.class Lsun/security/util/MemoryCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/MemoryCache$CacheEntry;,
        Lsun/security/util/MemoryCache$HardCacheEntry;,
        Lsun/security/util/MemoryCache$SoftCacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lsun/security/util/MemoryCache$CacheEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lifetime:J

.field private maxSize:I

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I

    .prologue
    .line 261
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    .line 260
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I
    .param p3, "lifetime"    # I

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/high16 v4, 0x3f400000    # 0.75f

    .line 264
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 265
    iput p2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    .line 266
    mul-int/lit16 v1, p3, 0x3e8

    int-to-long v2, v1

    iput-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    .line 267
    if-eqz p1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 272
    :goto_0
    int-to-float v1, p2

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 273
    .local v0, "buckets":I
    new-instance v1, Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v4, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    .line 264
    return-void

    .line 270
    .end local v0    # "buckets":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    goto :goto_0
.end method

.method private emptyQueue()V
    .locals 5

    .prologue
    .line 284
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    iget-object v4, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v4, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 290
    .local v3, "startSize":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 291
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_2

    .line 283
    return-void

    .line 294
    :cond_2
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_1

    .line 299
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 302
    .local v0, "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    if-eq v1, v0, :cond_1

    .line 303
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private expungeExpiredEntries()V
    .locals 10

    .prologue
    .line 319
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 320
    iget-wide v6, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    .line 324
    .local v0, "cnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, "time":J
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 326
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 325
    if-eqz v3, :cond_2

    .line 327
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 328
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v1, v4, v5}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_2
    return-void
.end method

.method private getCachedEntries()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 452
    .local v2, "kvmap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 453
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized accept(Lsun/security/util/Cache$CacheVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    monitor-enter p0

    .line 443
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 444
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->getCachedEntries()Ljava/util/Map;

    move-result-object v0

    .line 446
    .local v0, "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1, v0}, Lsun/security/util/Cache$CacheVisitor;->visit(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 442
    return-void

    .end local v0    # "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v2, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 351
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 353
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-nez v2, :cond_0

    .line 357
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 346
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    monitor-enter p0

    .line 386
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 387
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v0, :cond_0

    monitor-exit p0

    .line 389
    return-object v6

    .line 391
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lsun/security/util/MemoryCache;->lifetime:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 392
    .local v2, "time":J
    :goto_0
    invoke-interface {v0, v2, v3}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 397
    return-object v6

    .line 391
    .end local v2    # "time":J
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 399
    .restart local v2    # "time":J
    :cond_2
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;
    .locals 7
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)",
            "Lsun/security/util/MemoryCache$CacheEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    if-eqz p5, :cond_0

    .line 462
    new-instance v1, Lsun/security/util/MemoryCache$SoftCacheEntry;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lsun/security/util/MemoryCache$SoftCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    return-object v1

    .line 464
    :cond_0
    new-instance v0, Lsun/security/util/MemoryCache$HardCacheEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lsun/security/util/MemoryCache$HardCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 361
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 362
    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    .line 364
    .local v4, "expirationTime":J
    :goto_0
    iget-object v6, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lsun/security/util/MemoryCache;->newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;

    move-result-object v7

    .line 365
    .local v7, "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/util/MemoryCache$CacheEntry;

    .line 366
    .local v8, "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v8, :cond_1

    .line 367
    invoke-interface {v8}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 368
    return-void

    .line 363
    .end local v4    # "expirationTime":J
    .end local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v10, p0, Lsun/security/util/MemoryCache;->lifetime:J

    add-long v4, v2, v10

    .restart local v4    # "expirationTime":J
    goto :goto_0

    .line 370
    .restart local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .restart local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_1
    iget v1, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v1, v2, :cond_2

    .line 371
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 372
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v1, v2, :cond_2

    .line 373
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 374
    .local v9, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 379
    .local v0, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 380
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v9    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_2
    monitor-exit p0

    .line 360
    return-void

    .end local v4    # "expirationTime":J
    .end local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 404
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 405
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 402
    return-void

    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/4 v3, 0x0

    monitor-enter p0

    .line 411
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 412
    if-lez p1, :cond_0

    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 413
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 414
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    sub-int v0, v4, p1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 420
    .local v1, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 421
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 414
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    .end local v1    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_0
    if-lez p1, :cond_1

    .end local p1    # "size":I
    :goto_1
    iput p1, p0, Lsun/security/util/MemoryCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 410
    return-void

    .restart local p1    # "size":I
    :cond_1
    move p1, v3

    .line 425
    goto :goto_1

    .end local p1    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 433
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 434
    if-lez p1, :cond_0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 432
    return-void

    .line 434
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 342
    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 343
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
