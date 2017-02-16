.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$Entry;,
        Ljava/util/WeakHashMap$EntryIterator;,
        Ljava/util/WeakHashMap$EntrySet;,
        Ljava/util/WeakHashMap$EntrySpliterator;,
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$KeyIterator;,
        Ljava/util/WeakHashMap$KeySet;,
        Ljava/util/WeakHashMap$KeySpliterator;,
        Ljava/util/WeakHashMap$ValueIterator;,
        Ljava/util/WeakHashMap$ValueSpliterator;,
        Ljava/util/WeakHashMap$Values;,
        Ljava/util/WeakHashMap$WeakHashMapSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final loadFactor:F

.field modCount:I

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field table:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 240
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 232
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 231
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 206
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 179
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    .line 207
    if-gez p1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal Initial Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_1

    .line 211
    const/high16 p1, 0x40000000    # 2.0f

    .line 213
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal Load factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_3
    const/4 v0, 0x1

    .line 217
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 218
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_4
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 220
    iput p2, p0, Ljava/util/WeakHashMap;->loadFactor:F

    .line 221
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v2, 0x3f400000    # 0.75f

    .line 254
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 255
    const/16 v1, 0x10

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 257
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method private containsNullValue()Z
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 672
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 673
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_2

    .line 674
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 675
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 676
    const/4 v4, 0x1

    return v4

    .line 674
    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_1
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 677
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    return v5
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 286
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private expungeStaleEntries()V
    .locals 10

    .prologue
    .line 300
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v7, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    .local v6, "x":Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 301
    iget-object v8, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v8

    .line 303
    :try_start_0
    move-object v0, v6

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    move-object v1, v0

    .line 304
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v1, Ljava/util/WeakHashMap$Entry;->hash:I

    iget-object v9, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v9, v9

    invoke-static {v7, v9}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 306
    .local v2, "i":I
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aget-object v5, v7, v2

    .line 307
    .local v5, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v4, v5

    .line 308
    .local v4, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v4, :cond_0

    .line 309
    iget-object v3, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 310
    .local v3, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-ne v4, v1, :cond_2

    .line 311
    if-ne v5, v1, :cond_1

    .line 312
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aput-object v3, v7, v2

    .line 317
    :goto_2
    const/4 v7, 0x0

    iput-object v7, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 318
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    monitor-exit v8

    goto :goto_0

    .line 314
    .restart local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    :try_start_1
    iput-object v3, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 301
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 321
    .restart local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    move-object v5, v4

    .line 322
    move-object v4, v3

    goto :goto_1

    .line 299
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method private getTable()[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 333
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    .prologue
    .line 293
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 271
    if-nez p0, :cond_0

    sget-object p0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method private newTable(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "src":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p2, "dest":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v7, 0x0

    .line 494
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 495
    aget-object v0, p1, v2

    .line 496
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aput-object v7, p1, v2

    .line 497
    :goto_1
    if-eqz v0, :cond_1

    .line 498
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 499
    .local v4, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 500
    .local v3, "key":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 501
    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 502
    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 503
    iget v5, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/WeakHashMap;->size:I

    .line 509
    :goto_2
    move-object v0, v4

    goto :goto_1

    .line 505
    :cond_0
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    array-length v6, p2

    invoke-static {v5, v6}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v1

    .line 506
    .local v1, "i":I
    aget-object v5, p2, v1

    iput-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 507
    aput-object v0, p2, v1

    goto :goto_2

    .line 494
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    return-void
.end method

.method static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 278
    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 634
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 637
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 638
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    .line 644
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 631
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 399
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 657
    if-nez p1, :cond_0

    .line 658
    invoke-direct {p0}, Ljava/util/WeakHashMap;->containsNullValue()Z

    move-result v4

    return v4

    .line 660
    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 661
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 662
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 663
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    const/4 v4, 0x1

    return v4

    .line 662
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    return v5
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 940
    iget-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    .line 941
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$EntrySet;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 995
    .local v1, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 996
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 997
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    if-eqz v0, :cond_2

    .line 998
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 999
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1000
    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1002
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1004
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-eq v1, v6, :cond_0

    .line 1005
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 996
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 991
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 377
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 378
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .line 379
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 380
    .local v4, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v4

    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 381
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 382
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 383
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 384
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v5

    .line 385
    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 387
    :cond_1
    return-object v6
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 408
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .line 409
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 410
    .local v4, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v4

    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 411
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 412
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    :cond_0
    return-object v0

    .line 413
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 850
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 851
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$KeySet;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    .line 430
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 431
    .local v1, "k":Ljava/lang/Object;
    invoke-static {v1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v4

    .line 432
    .local v4, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v8

    .line 433
    .local v8, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v0, v8

    invoke-static {v4, v0}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v6

    .line 435
    .local v6, "i":I
    aget-object v5, v8, v6

    .local v5, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v5, :cond_2

    .line 436
    iget v0, v5, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v4, v0, :cond_1

    invoke-virtual {v5}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 438
    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    if-eq p2, v7, :cond_0

    .line 439
    iput-object p2, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 440
    :cond_0
    return-object v7

    .line 435
    .end local v7    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 444
    :cond_2
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 445
    aget-object v5, v8, v6

    .line 446
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V

    aput-object v0, v8, v6

    .line 447
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    iget v2, p0, Ljava/util/WeakHashMap;->threshold:I

    if-lt v0, v2, :cond_3

    .line 448
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->resize(I)V

    .line 449
    :cond_3
    return-object v9
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    .line 524
    .local v3, "numKeysToBeAdded":I
    if-nez v3, :cond_0

    .line 525
    return-void

    .line 536
    :cond_0
    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v3, v5, :cond_3

    .line 537
    int-to-float v5, v3

    iget v6, p0, Ljava/util/WeakHashMap;->loadFactor:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 538
    .local v4, "targetCapacity":I
    const/high16 v5, 0x40000000    # 2.0f

    if-le v4, v5, :cond_1

    .line 539
    const/high16 v4, 0x40000000    # 2.0f

    .line 540
    :cond_1
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v5

    .line 541
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 542
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_2
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v5

    if-le v2, v5, :cond_3

    .line 544
    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->resize(I)V

    .line 547
    .end local v2    # "newCapacity":I
    .end local v4    # "targetCapacity":I
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 522
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_4
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v8, 0x0

    .line 572
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 573
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .line 574
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v6

    .line 575
    .local v6, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v7, v6

    invoke-static {v1, v7}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 576
    .local v2, "i":I
    aget-object v5, v6, v2

    .line 577
    .local v5, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v0, v5

    .line 579
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 580
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 581
    .local v4, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v1, v7, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 582
    iget v7, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 583
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    .line 584
    if-ne v5, v0, :cond_0

    .line 585
    aput-object v4, v6, v2

    .line 588
    :goto_1
    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v7

    .line 587
    :cond_0
    iput-object v4, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 590
    :cond_1
    move-object v5, v0

    .line 591
    move-object v0, v4

    goto :goto_0

    .line 594
    .end local v4    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    return-object v8
.end method

.method removeMapping(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v9, 0x0

    .line 599
    instance-of v8, p1, Ljava/util/Map$Entry;

    if-nez v8, :cond_0

    .line 600
    return v9

    .line 601
    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v7

    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v1, p1

    .line 602
    check-cast v1, Ljava/util/Map$Entry;

    .line 603
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 604
    .local v4, "k":Ljava/lang/Object;
    invoke-static {v4}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v2

    .line 605
    .local v2, "h":I
    array-length v8, v7

    invoke-static {v2, v8}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 606
    .local v3, "i":I
    aget-object v6, v7, v3

    .line 607
    .local v6, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v0, v6

    .line 609
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 610
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 611
    .local v5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v8, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v2, v8, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 612
    iget v8, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 613
    iget v8, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/util/WeakHashMap;->size:I

    .line 614
    if-ne v6, v0, :cond_1

    .line 615
    aput-object v5, v7, v3

    .line 618
    :goto_1
    const/4 v8, 0x1

    return v8

    .line 617
    :cond_1
    iput-object v5, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    .line 620
    :cond_2
    move-object v6, v0

    .line 621
    move-object v0, v5

    goto :goto_0

    .line 624
    .end local v5    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return v9
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1017
    .local v1, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 1018
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 1019
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    if-eqz v0, :cond_2

    .line 1020
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1021
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1022
    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1024
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1026
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-eq v1, v6, :cond_0

    .line 1027
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1018
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1013
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    .prologue
    .line 467
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 468
    .local v2, "oldTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v2

    .line 469
    .local v1, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 470
    const v3, 0x7fffffff

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 471
    return-void

    .line 474
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 475
    .local v0, "newTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v2, v0}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 476
    iput-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 483
    iget v3, p0, Ljava/util/WeakHashMap;->size:I

    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_1

    .line 484
    int-to-float v3, p1

    iget v4, p0, Ljava/util/WeakHashMap;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 466
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 487
    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 488
    iput-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 343
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    if-nez v0, :cond_0

    .line 344
    return v1

    .line 345
    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 346
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 899
    iget-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 900
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Values;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
