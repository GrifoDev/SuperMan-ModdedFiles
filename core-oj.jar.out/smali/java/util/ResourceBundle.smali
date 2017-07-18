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

    const-class v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-void
.end method

.method private static final checkList(Ljava/util/List;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static final clearCache()V
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static final clearCache(Ljava/lang/ClassLoader;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    sget-object v3, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    invoke-virtual {v0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 15
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

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Locale;

    const/4 v12, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v12

    :cond_0
    :goto_0
    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v13

    if-eqz v13, :cond_2

    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    check-cast v13, Ljava/util/ResourceBundle$CacheKeyReference;

    invoke-interface {v13}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v14}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p5

    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p0, v14}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    move-object/from16 v0, p4

    invoke-static {p0, v0}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v8

    invoke-static {v8}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v11, v8, Ljava/util/ResourceBundle;->expired:Z

    if-nez v11, :cond_4

    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-ne v2, v12, :cond_3

    return-object v8

    :cond_3
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ResourceBundle$BundleReference;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_4

    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v8, v2, :cond_8

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ResourceBundle$CacheKey;

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {p0, v0, v1, v11}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v2, :cond_5

    invoke-virtual {v8, v12}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    :cond_5
    iput-object v14, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    move-object/from16 v0, p4

    invoke-static {p0, v8, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    return-object v8

    :cond_7
    :try_start_1
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    move-object/from16 v0, p4

    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    return-object v12

    :catchall_0
    move-exception v2

    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw v2
.end method

.method private static final findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 14

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ResourceBundle$BundleReference;

    if-nez v8, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    iget-object v13, v5, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

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

    :cond_3
    if-eqz v13, :cond_7

    iget-boolean v2, v13, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v2, :cond_7

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

    :cond_5
    iput-boolean v1, v5, Ljava/util/ResourceBundle;->expired:Z

    iput-object v3, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :cond_6
    :goto_1
    return-object v5

    :cond_7
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v12

    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_6

    cmp-long v0, v10, v6

    if-ltz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_6

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v5, v0, :cond_a

    monitor-enter v5

    :try_start_0
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_8

    cmp-long v0, v10, v6

    if-ltz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_8

    :try_start_1
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get1(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v0

    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_3
    monitor-exit v5

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_3
    invoke-static {p0, v9}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_9
    :try_start_4
    invoke-static {v12, p1}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_a
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static final getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 3
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    new-instance v0, Ljava/util/ResourceBundle$CacheKey;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    const/4 v6, 0x0

    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ResourceBundle$BundleReference;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ResourceBundle;

    const/4 v7, 0x0

    :cond_2
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v6

    :cond_3
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v4

    if-eq p3, v4, :cond_9

    instance-of v9, p3, Ljava/util/ResourceBundle$SingleFormatControl;

    :goto_0
    invoke-virtual {p3, p0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v9, :cond_4

    invoke-static {v2}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_4
    const/4 v5, 0x0

    move-object v10, p1

    :goto_1
    if-eqz v10, :cond_6

    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    if-nez v9, :cond_5

    invoke-static {v1}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_5
    move-object v4, p3

    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v6

    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v11, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_c

    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_6
    if-nez v6, :cond_8

    if-nez v5, :cond_7

    invoke-static {v0}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {p0, p1, v3}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    :cond_7
    move-object v6, v5

    :cond_8
    return-object v6

    :cond_9
    const/4 v9, 0x1

    goto :goto_0

    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getFormats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getCandidateLocales"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    if-eqz v8, :cond_d

    if-nez v5, :cond_d

    move-object v5, v6

    :cond_d
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v10

    goto :goto_1
.end method

.method private static getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->-get0()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static final hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    if-eqz p0, :cond_2

    iget-boolean v3, p0, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v3, :cond_0

    return v8

    :cond_0
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-ltz v3, :cond_1

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    return v8

    :cond_1
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private static final isValidBundle(Ljava/util/ResourceBundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .locals 11
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

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v0, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    iput-object v2, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-boolean v0, v6, Ljava/util/ResourceBundle;->expired:Z

    :cond_0
    return-object v6

    :catch_0
    move-exception v7

    invoke-static {p0, v7}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-static {p0, v8}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private static final putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 9

    const/4 v8, 0x0

    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle$CacheKey;

    new-instance v0, Ljava/util/ResourceBundle$BundleReference;

    sget-object v4, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v4, v1}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v1, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle$BundleReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle;

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v4, :cond_2

    :cond_0
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iput-object v8, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    move-object p1, v2

    invoke-virtual {v0}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    goto :goto_0
.end method

.method private static final setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .locals 7

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->-set1(Ljava/util/ResourceBundle$CacheKey;J)J

    add-long v4, v0, v2

    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    goto :goto_0

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

    instance-of v0, p2, Ljava/util/MissingResourceException;

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find bundle for base name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

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

    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

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

    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iput-object v2, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 1

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

    :cond_1
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method
