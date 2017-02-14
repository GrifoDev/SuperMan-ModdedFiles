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

    const/16 v1, 0x10

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lsun/util/locale/LocaleObjectCache;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private cleanStaleEntries()V
    .locals 3

    :goto_0
    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

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

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;->cleanStaleEntries()V

    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lsun/util/locale/LocaleObjectCache;->normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/locale/LocaleObjectCache;->createObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz p1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    return-object v5

    :cond_2
    new-instance v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2, v4}, Lsun/util/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    if-nez v0, :cond_4

    move-object v3, v2

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    invoke-virtual {v0}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    return-object p1
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    iget-object v3, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Lsun/util/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v3, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
