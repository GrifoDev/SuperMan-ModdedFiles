.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$1;,
        Ljava/util/ResourceBundle$BundleReference;,
        Ljava/util/ResourceBundle$CacheKey;,
        Ljava/util/ResourceBundle$CacheKeyReference;,
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$LoaderReference;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$RBClassLoader;,
        Ljava/util/ResourceBundle$SingleFormatControl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_CACHE_SIZE:I = 0x20

.field private static final NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

.field private static final cacheList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/ResourceBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field private volatile cacheKey:Ljava/util/ResourceBundle$CacheKey;

.field private volatile expired:Z

.field private volatile keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static synthetic -get0()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    .line 277
    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    .line 297
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 296
    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    .line 302
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 271
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 314
    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 341
    return-void
.end method

.method private static final checkList(Ljava/util/List;)Z
    .locals 4
    .param p0, "a"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 1337
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1338
    .local v2, "valid":Z
    :cond_0
    if-eqz v2, :cond_2

    .line 1339
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1340
    .local v1, "size":I
    const/4 v0, 0x0

    .end local v2    # "valid":Z
    .local v0, "i":I
    :goto_0
    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 1341
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1340
    .local v2, "valid":Z
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1341
    .end local v2    # "valid":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "valid":Z
    goto :goto_1

    .line 1344
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "valid":Z
    :cond_2
    return v2
.end method

.method public static final clearCache()V
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1683
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    .line 1682
    return-void
.end method

.method public static final clearCache(Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1696
    if-nez p0, :cond_0

    .line 1697
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1699
    :cond_0
    sget-object v3, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1700
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/ResourceBundle$CacheKey;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 1701
    .local v0, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-virtual {v0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 1702
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1695
    .end local v0    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_2
    return-void
.end method

.method private static final findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p3, "index"    # I
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .param p5, "baseBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ResourceBundle$Control;",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Locale;

    .line 1354
    .local v14, "targetLocale":Ljava/util/Locale;
    const/4 v12, 0x0

    .line 1355
    .local v12, "parent":Ljava/util/ResourceBundle;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    .line 1356
    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v12

    .line 1367
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v13

    .local v13, "ref":Ljava/lang/Object;
    if-eqz v13, :cond_2

    .line 1368
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    check-cast v13, Ljava/util/ResourceBundle$CacheKeyReference;

    .end local v13    # "ref":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1358
    .restart local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_1
    if-eqz p5, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v14}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1359
    return-object p5

    .line 1372
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    .restart local v13    # "ref":Ljava/lang/Object;
    :cond_2
    const/4 v11, 0x0

    .line 1376
    .local v11, "expiredBundle":Z
    invoke-virtual {p0, v14}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    .line 1377
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 1378
    .local v8, "bundle":Ljava/util/ResourceBundle;
    invoke-static {v8}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1379
    iget-boolean v11, v8, Ljava/util/ResourceBundle;->expired:Z

    .line 1380
    .local v11, "expiredBundle":Z
    if-nez v11, :cond_4

    .line 1386
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-ne v2, v12, :cond_3

    .line 1387
    return-object v8

    .line 1391
    :cond_3
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ResourceBundle$BundleReference;

    .line 1392
    .local v9, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_4

    .line 1393
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1398
    .end local v9    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v11    # "expiredBundle":Z
    :cond_4
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v8, v2, :cond_8

    .line 1399
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ResourceBundle$CacheKey;

    .line 1402
    .local v10, "constKey":Ljava/util/ResourceBundle$CacheKey;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {p0, v0, v1, v11}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 1403
    if-eqz v8, :cond_7

    .line 1404
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v2, :cond_5

    .line 1405
    invoke-virtual {v8, v12}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 1407
    :cond_5
    iput-object v14, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1408
    move-object/from16 v0, p4

    invoke-static {p0, v8, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1416
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_6

    .line 1417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1409
    :cond_6
    return-object v8

    .line 1414
    :cond_7
    :try_start_1
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    move-object/from16 v0, p4

    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_8

    .line 1417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1421
    .end local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :cond_8
    return-object v12

    .line 1415
    .restart local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :catchall_0
    move-exception v2

    .line 1416
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_9

    .line 1417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1415
    :cond_9
    throw v2
.end method

.method private static final findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 14
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1520
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ResourceBundle$BundleReference;

    .line 1521
    .local v8, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-nez v8, :cond_0

    .line 1522
    return-object v3

    .line 1524
    :cond_0
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    .line 1525
    .local v5, "bundle":Ljava/util/ResourceBundle;
    if-nez v5, :cond_1

    .line 1526
    return-object v3

    .line 1528
    :cond_1
    iget-object v13, v5, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1529
    .local v13, "p":Ljava/util/ResourceBundle;
    sget-boolean v2, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v13, v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v2, v0

    goto :goto_0

    .line 1563
    :cond_3
    if-eqz v13, :cond_7

    iget-boolean v2, v13, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v2, :cond_7

    .line 1564
    sget-boolean v2, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v2, :cond_5

    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v5, v2, :cond_4

    move v0, v1

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1565
    :cond_5
    iput-boolean v1, v5, Ljava/util/ResourceBundle;->expired:Z

    .line 1566
    iput-object v3, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1567
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1568
    const/4 v5, 0x0

    .line 1613
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_6
    :goto_1
    return-object v5

    .line 1570
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v12

    .line 1571
    .local v12, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1572
    .local v10, "expirationTime":J
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_6

    cmp-long v0, v10, v6

    if-ltz v0, :cond_6

    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_6

    .line 1575
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v5, v0, :cond_a

    .line 1578
    monitor-enter v5

    .line 1579
    :try_start_0
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1580
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_8

    cmp-long v0, v10, v6

    if-ltz v0, :cond_8

    .line 1581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_8

    .line 1583
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1584
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1585
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 1586
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1588
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get1(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v6

    move-object v0, p1

    .line 1583
    invoke-virtual/range {v0 .. v7}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v0

    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    :goto_2
    :try_start_2
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_9

    .line 1597
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1598
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_3
    monitor-exit v5

    goto :goto_1

    .line 1589
    :catch_0
    move-exception v9

    .line 1590
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {p0, v9}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1578
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 1602
    :cond_9
    :try_start_4
    invoke-static {v12, p1}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1608
    :cond_a
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1609
    const/4 v5, 0x0

    .local v5, "bundle":Ljava/util/ResourceBundle;
    goto :goto_1
.end method

.method public static final getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 723
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 725
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 726
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v2

    .line 723
    invoke-static {p0, v0, v1, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 799
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 800
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v1

    .line 797
    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1027
    if-nez p2, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1030
    :cond_0
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 1245
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1246
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1248
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 845
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 843
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 766
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 768
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 766
    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const/4 v3, 0x0

    .line 1253
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1254
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1261
    :cond_1
    new-instance v0, Ljava/util/ResourceBundle$CacheKey;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    .line 1262
    .local v0, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    const/4 v6, 0x0

    .line 1265
    .local v6, "bundle":Ljava/util/ResourceBundle;
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ResourceBundle$BundleReference;

    .line 1266
    .local v7, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v7, :cond_2

    .line 1267
    invoke-virtual {v7}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    check-cast v6, Ljava/util/ResourceBundle;

    .line 1268
    .local v6, "bundle":Ljava/util/ResourceBundle;
    const/4 v7, 0x0

    .line 1275
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v7    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :cond_2
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1276
    return-object v6

    .line 1282
    :cond_3
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v4

    if-eq p3, v4, :cond_9

    .line 1283
    instance-of v9, p3, Ljava/util/ResourceBundle$SingleFormatControl;

    .line 1284
    :goto_0
    invoke-virtual {p3, p0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1285
    .local v2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_4

    invoke-static {v2}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1289
    :cond_4
    const/4 v5, 0x0

    .line 1290
    .local v5, "baseBundle":Ljava/util/ResourceBundle;
    move-object v10, p1

    .end local v5    # "baseBundle":Ljava/util/ResourceBundle;
    .local v10, "targetLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v10, :cond_6

    .line 1293
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    .line 1294
    .local v1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v9, :cond_5

    invoke-static {v1}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_5
    move-object v4, p3

    .line 1298
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 1305
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1306
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v11, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1307
    .local v8, "isBaseBundle":Z
    if-eqz v8, :cond_6

    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_c

    .line 1309
    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1307
    if-eqz v4, :cond_c

    .line 1322
    .end local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v8    # "isBaseBundle":Z
    :cond_6
    if-nez v6, :cond_8

    .line 1323
    if-nez v5, :cond_7

    .line 1324
    invoke-static {v0}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {p0, p1, v3}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    .line 1326
    :cond_7
    move-object v6, v5

    .line 1329
    :cond_8
    return-object v6

    .line 1282
    .end local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "targetLocale":Ljava/util/Locale;
    :cond_9
    const/4 v9, 0x1

    .local v9, "isKnownControl":Z
    goto :goto_0

    .line 1286
    .end local v9    # "isKnownControl":Z
    .restart local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getFormats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1295
    .restart local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v10    # "targetLocale":Ljava/util/Locale;
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getCandidateLocales"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1316
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    .restart local v8    # "isBaseBundle":Z
    :cond_c
    if-eqz v8, :cond_d

    if-nez v5, :cond_d

    .line 1317
    move-object v5, v6

    .line 1292
    .end local v8    # "isBaseBundle":Z
    :cond_d
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v10

    goto :goto_1
.end method

.method private static getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 423
    if-nez p0, :cond_0

    .line 431
    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->-get0()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object p0

    .line 433
    :cond_0
    return-object p0
.end method

.method private static final hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .locals 9
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    const/4 v8, 0x0

    .line 1473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1474
    .local v4, "now":J
    :goto_0
    if-eqz p0, :cond_2

    .line 1475
    iget-boolean v3, p0, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v3, :cond_0

    .line 1476
    return v8

    .line 1478
    :cond_0
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1479
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    if-eqz v2, :cond_1

    .line 1480
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v0

    .line 1481
    .local v0, "expirationTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-ltz v3, :cond_1

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 1482
    return v8

    .line 1485
    .end local v0    # "expirationTime":J
    :cond_1
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1487
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private static final isValidBundle(Ljava/util/ResourceBundle;)Z
    .locals 2
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    const/4 v0, 0x0

    .line 1465
    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .locals 11
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ResourceBundle$Control;",
            "Z)",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1431
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1433
    .local v2, "targetLocale":Ljava/util/Locale;
    const/4 v6, 0x0

    .line 1434
    .local v6, "bundle":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1435
    .local v10, "size":I
    const/4 v9, 0x0

    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 1436
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1438
    .local v3, "format":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1439
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v0, p2

    move v5, p3

    .line 1438
    invoke-virtual/range {v0 .. v5}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1448
    :goto_1
    if-eqz v6, :cond_1

    .line 1451
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    .line 1453
    iput-object v2, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, v6, Ljava/util/ResourceBundle;->expired:Z

    .line 1461
    .end local v3    # "format":Ljava/lang/String;
    :cond_0
    return-object v6

    .line 1445
    .restart local v3    # "format":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1446
    .local v7, "cause":Ljava/lang/Exception;
    invoke-static {p0, v7}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1440
    .end local v7    # "cause":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1444
    .local v8, "error":Ljava/lang/LinkageError;
    invoke-static {p0, v8}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1435
    .end local v8    # "error":Ljava/lang/LinkageError;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private static final putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 9
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const/4 v8, 0x0

    .line 1628
    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    .line 1629
    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1630
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle$CacheKey;

    .line 1631
    .local v1, "key":Ljava/util/ResourceBundle$CacheKey;
    new-instance v0, Ljava/util/ResourceBundle$BundleReference;

    sget-object v4, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v4, v1}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    .line 1632
    .local v0, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    iput-object v1, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1635
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle$BundleReference;

    .line 1639
    .local v3, "result":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v3, :cond_1

    .line 1640
    invoke-virtual {v3}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle;

    .line 1641
    .local v2, "rb":Ljava/util/ResourceBundle;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v4, :cond_2

    .line 1651
    :cond_0
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    .end local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .end local v2    # "rb":Ljava/util/ResourceBundle;
    .end local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_1
    :goto_0
    return-object p1

    .line 1643
    .restart local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .restart local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .restart local v2    # "rb":Ljava/util/ResourceBundle;
    .restart local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_2
    iput-object v8, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1644
    move-object p1, v2

    .line 1647
    invoke-virtual {v0}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    goto :goto_0
.end method

.method private static final setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .locals 7
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 1659
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1660
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 1659
    invoke-virtual {p1, v4, v5}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    .line 1661
    .local v2, "ttl":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 1664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1665
    .local v0, "now":J
    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->-set1(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1666
    add-long v4, v0, v2

    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1658
    .end local v0    # "now":J
    :goto_0
    return-void

    .line 1667
    :cond_0
    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 1668
    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    goto :goto_0

    .line 1670
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid Control: TTL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1498
    instance-of v0, p2, Ljava/util/MissingResourceException;

    if-eqz v0, :cond_0

    .line 1499
    const/4 p2, 0x0

    .line 1501
    .end local p2    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find bundle for base name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1502
    const-string/jumbo v2, ", locale "

    .line 1501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1504
    const-string/jumbo v3, ""

    .line 1501
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1740
    if-nez p1, :cond_0

    .line 1741
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1743
    :cond_0
    move-object v0, p0

    .local v0, "rb":Ljava/util/ResourceBundle;
    :goto_0
    if-eqz v0, :cond_2

    .line 1744
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1745
    const/4 v1, 0x1

    return v1

    .line 1743
    :cond_1
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1748
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 394
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    :cond_0
    if-nez v0, :cond_1

    .line 398
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    const-string/jumbo v3, ", key "

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_1
    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 1786
    monitor-enter p0

    .line 1787
    :try_start_0
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_2

    .line 1788
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1789
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1790
    .local v0, "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1791
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1792
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1793
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1786
    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1796
    .restart local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iput-object v2, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    .line 1800
    :cond_3
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    return-object v3
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1760
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1761
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "rb":Ljava/util/ResourceBundle;
    :goto_0
    if-eqz v1, :cond_0

    .line 1762
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1761
    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1764
    :cond_0
    return-object v0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    .prologue
    .line 478
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :cond_1
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 477
    return-void
.end method
