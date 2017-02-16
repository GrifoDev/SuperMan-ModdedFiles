.class public abstract Lsun/util/locale/LocaleObjectCache;
.super Ljava/lang/Object;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/LocaleObjectCache$CacheEntry;
    }
.end annotation

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
.field private map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Lsun/util/locale/LocaleObjectCache$CacheEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    const/16 v1, 0x10

    .line 44
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lsun/util/locale/LocaleObjectCache;-><init>(IFI)V

    .line 43
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 47
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    return-void
.end method

.method private cleanStaleEntries()V
    .locals 3

    .prologue
    .line 92
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .local v0, "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;->cleanStaleEntries()V

    .line 55
    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .line 56
    .local v0, "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 59
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    if-nez v3, :cond_3

    .line 60
    invoke-virtual {p0, p1}, Lsun/util/locale/LocaleObjectCache;->normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lsun/util/locale/LocaleObjectCache;->createObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "newVal":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    if-nez v2, :cond_2

    .line 64
    :cond_1
    return-object v5

    .line 67
    :cond_2
    new-instance v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2, v4}, Lsun/util/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 69
    .local v1, "newEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .line 70
    .restart local v0    # "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-nez v0, :cond_4

    .line 71
    move-object v3, v2

    .line 80
    .end local v1    # "newEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    .end local v2    # "newVal":Ljava/lang/Object;, "TV;"
    :cond_3
    :goto_0
    return-object v3

    .line 73
    .restart local v1    # "newEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    .restart local v2    # "newVal":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {v0}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 74
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_3

    .line 75
    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object v3, v2

    goto :goto_0
.end method

.method protected normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return-object p1
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    iget-object v3, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Lsun/util/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 85
    .local v0, "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    iget-object v3, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .line 86
    .local v1, "oldEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
