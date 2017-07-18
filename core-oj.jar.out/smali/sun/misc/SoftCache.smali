.class public Lsun/misc/SoftCache;
.super Ljava/util/AbstractMap;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/SoftCache$Entry;,
        Lsun/misc/SoftCache$EntrySet;,
        Lsun/misc/SoftCache$ValueCell;
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private hash:Ljava/util/Map;

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static synthetic -get0(Lsun/misc/SoftCache;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lsun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    iget-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lsun/misc/SoftCache;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lsun/misc/SoftCache;)V
    .locals 0

    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    return-void
.end method

.method private processQueue()V
    .locals 3

    :goto_0
    iget-object v1, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/misc/SoftCache$ValueCell;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lsun/misc/SoftCache$ValueCell;->-wrap0(Lsun/misc/SoftCache$ValueCell;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-static {v0}, Lsun/misc/SoftCache$ValueCell;->-get1(Lsun/misc/SoftCache$ValueCell;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lsun/misc/SoftCache$ValueCell;->-get0()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lsun/misc/SoftCache$ValueCell;->-set0(I)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lsun/misc/SoftCache$EntrySet;

    invoke-direct {v0, p0, v1}, Lsun/misc/SoftCache$EntrySet;-><init>(Lsun/misc/SoftCache;Lsun/misc/SoftCache$EntrySet;)V

    iput-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method protected fill(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/misc/SoftCache;->fill(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    iget-object v2, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, v0, v2}, Lsun/misc/SoftCache$ValueCell;->-wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lsun/misc/SoftCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    iget-object v1, p0, Lsun/misc/SoftCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, p2, v1}, Lsun/misc/SoftCache$ValueCell;->-wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lsun/misc/SoftCache;->processQueue()V

    iget-object v0, p0, Lsun/misc/SoftCache;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/misc/SoftCache$ValueCell;->-wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lsun/misc/SoftCache;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
