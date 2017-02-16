.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$EntrySpliterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapEntry;,
        Ljava/util/HashMap$HashMapSpliterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$KeySpliterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$ValueSpliterator;,
        Ljava/util/HashMap$Values;
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
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x4

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<**>;"
        }
    .end annotation
.end field

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


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

.field final loadFactor:F

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 240
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 232
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 231
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 201
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 159
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 181
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 202
    if-gez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_3

    .line 206
    const/high16 p1, 0x40000000    # 2.0f

    .line 211
    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_3
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 208
    const/4 p1, 0x4

    goto :goto_0

    .line 220
    :cond_4
    iput p1, p0, Ljava/util/HashMap;->threshold:I

    .line 221
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    .line 201
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v2, 0x3f400000    # 0.75f

    .line 253
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 254
    const/4 v1, 0x4

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 255
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    invoke-direct {p0, v0}, Ljava/util/HashMap;->inflateTable(I)V

    .line 257
    invoke-direct {p0, p1}, Ljava/util/HashMap;->putAllForCreate(Ljava/util/Map;)V

    .line 252
    return-void
.end method

.method private containsNullValue()Z
    .locals 4

    .prologue
    .line 691
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 692
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 693
    aget-object v0, v2, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_1

    .line 694
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 695
    const/4 v3, 0x1

    return v3

    .line 693
    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 692
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private entrySet0()Ljava/util/Set;
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1303
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 1304
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$EntrySet;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method private getForNullKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 361
    iget v1, p0, Ljava/util/HashMap;->size:I

    if-nez v1, :cond_0

    .line 362
    return-object v2

    .line 364
    :cond_0
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v1, v3

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 365
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 366
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    return-object v1

    .line 364
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 368
    :cond_2
    return-object v2
.end method

.method static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    .prologue
    .line 307
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private inflateTable(I)V
    .locals 4
    .param p1, "toSize"    # I

    .prologue
    .line 276
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->roundUpToPowerOf2(I)I

    move-result v0

    .line 281
    .local v0, "capacity":I
    int-to-float v2, v0

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v1, v2, v3

    .line 282
    .local v1, "thresholdFloat":F
    const/high16 v2, 0x4e800000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 283
    const/high16 v1, 0x4e800000

    .line 286
    :cond_0
    float-to-int v2, v1

    iput v2, p0, Ljava/util/HashMap;->threshold:I

    .line 287
    new-array v2, v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 274
    return-void
.end method

.method private putAllForCreate(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 486
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 465
    .local v1, "hash":I
    :goto_0
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/util/HashMap;->indexFor(II)I

    move-result v2

    .line 472
    .local v2, "i":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v4, v2

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 474
    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v4, v1, :cond_2

    .line 475
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 474
    if-eqz v4, :cond_2

    .line 476
    :cond_0
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 477
    return-void

    .line 464
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "i":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "hash":I
    goto :goto_0

    .line 472
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v2    # "i":I
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 481
    :cond_3
    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/util/HashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 463
    return-void
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 444
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v2, v4

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 445
    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 446
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 447
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 448
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    .line 449
    return-object v1

    .line 444
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 452
    :cond_1
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    .line 453
    invoke-virtual {p0, v4, v3, p1, v4}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 454
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1433
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1434
    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1435
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string/jumbo v6, "Illegal load factor: 0.75"

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1440
    :cond_0
    sget-object v5, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    iput-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 1443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 1446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1447
    .local v3, "mappings":I
    if-gez v3, :cond_1

    .line 1448
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal mappings count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1453
    :cond_1
    int-to-float v5, v3

    const v6, 0x3faaaaab

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    .line 1455
    const/high16 v6, 0x4e800000

    .line 1452
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v0, v5

    .line 1458
    .local v0, "capacity":I
    if-lez v3, :cond_2

    .line 1459
    invoke-direct {p0, v0}, Ljava/util/HashMap;->inflateTable(I)V

    .line 1464
    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    .line 1467
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1469
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1470
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1461
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    goto :goto_0

    .line 1430
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static roundUpToPowerOf2(I)I
    .locals 3
    .param p0, "number"    # I

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 262
    if-lt p0, v0, :cond_1

    .line 268
    .local v0, "rounded":I
    :cond_0
    :goto_0
    return v0

    .line 264
    .end local v0    # "rounded":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .restart local v0    # "rounded":I
    if-eqz v0, :cond_2

    .line 265
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    if-le v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 266
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1402
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1405
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v3, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-ne v2, v3, :cond_0

    .line 1406
    iget v2, p0, Ljava/util/HashMap;->threshold:I

    invoke-static {v2}, Ljava/util/HashMap;->roundUpToPowerOf2(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1412
    :goto_0
    iget v2, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1415
    iget v2, p0, Ljava/util/HashMap;->size:I

    if-lez v2, :cond_1

    .line 1416
    invoke-direct {p0}, Ljava/util/HashMap;->entrySet0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1417
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 1408
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    .line 1399
    :cond_1
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    iget v1, p0, Ljava/util/HashMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v0, p4

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->resize(I)V

    .line 809
    if-eqz p2, :cond_1

    invoke-static {p2}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result p1

    .line 810
    :goto_0
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/HashMap;->indexFor(II)I

    move-result p4

    .line 813
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/HashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 806
    return-void

    .line 809
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method capacity()I
    .locals 1

    .prologue
    .line 1487
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 662
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 663
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 661
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 706
    const/4 v2, 0x0

    .line 708
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v2    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :goto_0
    iget-object v3, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v4, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-eq v3, v4, :cond_0

    .line 715
    iget v3, p0, Ljava/util/HashMap;->size:I

    int-to-float v3, v3

    const v4, 0x3faaaaab

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    .line 717
    const/high16 v4, 0x4e800000

    .line 714
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 718
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v4, v4

    .line 713
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;->inflateTable(I)V

    .line 720
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 721
    iput v6, v2, Ljava/util/HashMap;->modCount:I

    .line 722
    iput v6, v2, Ljava/util/HashMap;->size:I

    .line 723
    invoke-virtual {v2}, Ljava/util/HashMap;->init()V

    .line 724
    invoke-direct {v2, p0}, Ljava/util/HashMap;->putAllForCreate(Ljava/util/Map;)V

    .line 726
    return-object v2

    .line 709
    .restart local v2    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 380
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

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
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 676
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 677
    invoke-direct {p0}, Ljava/util/HashMap;->containsNullValue()Z

    move-result v3

    return v3

    .line 679
    :cond_0
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 680
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 681
    aget-object v0, v2, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_2

    .line 682
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    const/4 v3, 0x1

    return v3

    .line 681
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 680
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v1, p4

    .line 826
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    new-instance v2, Ljava/util/HashMap$HashMapEntry;

    invoke-direct {v2, p1, p2, p3, v0}, Ljava/util/HashMap$HashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    aput-object v2, v1, p4

    .line 827
    iget v1, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/HashMap;->size:I

    .line 824
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 1299
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1353
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_0

    .line 1354
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1355
    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    .line 1356
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    .line 1357
    .local v2, "mc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1358
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 1359
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1362
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_1

    .line 1363
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1358
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 1357
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 346
    if-nez p1, :cond_0

    .line 347
    invoke-direct {p0}, Ljava/util/HashMap;->getForNullKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 350
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method final getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 389
    iget v3, p0, Ljava/util/HashMap;->size:I

    if-nez v3, :cond_0

    .line 390
    return-object v5

    .line 393
    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 394
    .local v1, "hash":I
    :goto_0
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/util/HashMap;->indexFor(II)I

    move-result v4

    aget-object v0, v3, v4

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    .line 398
    iget v3, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v3, v1, :cond_3

    .line 399
    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .local v2, "k":Ljava/lang/Object;
    if-eq v2, p1, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 398
    if-eqz v3, :cond_3

    .line 400
    :cond_1
    return-object v0

    .line 393
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "k":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "hash":I
    goto :goto_0

    .line 396
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 402
    :cond_4
    return-object v5
.end method

.method init()V
    .locals 0

    .prologue
    .line 299
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 325
    iget v1, p0, Ljava/util/HashMap;->size:I

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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1182
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 1183
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$KeySet;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method loadFactor()F
    .locals 1

    .prologue
    .line 1488
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    return v0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$EntryIterator;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$KeyIterator;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$ValueIterator;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    .line 418
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v6, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-ne v5, v6, :cond_0

    .line 419
    iget v5, p0, Ljava/util/HashMap;->threshold:I

    invoke-direct {p0, v5}, Ljava/util/HashMap;->inflateTable(I)V

    .line 421
    :cond_0
    if-nez p1, :cond_1

    .line 422
    invoke-direct {p0, p2}, Ljava/util/HashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 423
    :cond_1
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .line 424
    .local v1, "hash":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v5

    invoke-static {v1, v5}, Ljava/util/HashMap;->indexFor(II)I

    move-result v2

    .line 425
    .local v2, "i":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v5, v2

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 427
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_3

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    :cond_2
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 429
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 430
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    .line 431
    return-object v4

    .line 425
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 435
    :cond_4
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 436
    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 437
    return-object v7
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v7, 0x3f400000    # 0.75f

    .line 542
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    .line 543
    .local v3, "numKeysToBeAdded":I
    if-nez v3, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v6, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-ne v5, v6, :cond_1

    .line 547
    int-to-float v5, v3

    mul-float/2addr v5, v7

    iget v6, p0, Ljava/util/HashMap;->threshold:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5}, Ljava/util/HashMap;->inflateTable(I)V

    .line 559
    :cond_1
    iget v5, p0, Ljava/util/HashMap;->threshold:I

    if-le v3, v5, :cond_4

    .line 560
    int-to-float v5, v3

    div-float/2addr v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 561
    .local v4, "targetCapacity":I
    const/high16 v5, 0x40000000    # 2.0f

    if-le v4, v5, :cond_2

    .line 562
    const/high16 v4, 0x40000000    # 2.0f

    .line 563
    :cond_2
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v5

    .line 564
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 565
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_3
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v5

    if-le v2, v5, :cond_4

    .line 567
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->resize(I)V

    .line 570
    .end local v2    # "newCapacity":I
    .end local v4    # "targetCapacity":I
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 571
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_5
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 584
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 585
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method final removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 594
    iget v6, p0, Ljava/util/HashMap;->size:I

    if-nez v6, :cond_0

    .line 595
    return-object v7

    .line 597
    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 598
    .local v1, "hash":I
    :goto_0
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v6, v6

    invoke-static {v1, v6}, Ljava/util/HashMap;->indexFor(II)I

    move-result v2

    .line 599
    .local v2, "i":I
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v5, v6, v2

    .line 600
    .local v5, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v5

    .line 602
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_5

    .line 603
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 605
    .local v4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v1, :cond_4

    .line 606
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 605
    if-eqz v6, :cond_4

    .line 607
    :cond_1
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    .line 608
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 609
    if-ne v5, v0, :cond_3

    .line 610
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aput-object v4, v6, v2

    .line 613
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordRemoval(Ljava/util/HashMap;)V

    .line 614
    return-object v0

    .line 597
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "i":I
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "hash":I
    goto :goto_0

    .line 612
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "k":Ljava/lang/Object;
    .restart local v4    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v5    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    iput-object v4, v5, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 616
    .end local v3    # "k":Ljava/lang/Object;
    :cond_4
    move-object v5, v0

    .line 617
    move-object v0, v4

    goto :goto_1

    .line 620
    .end local v4    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_5
    return-object v0
.end method

.method final removeMapping(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v8, 0x0

    .line 628
    iget v7, p0, Ljava/util/HashMap;->size:I

    if-eqz v7, :cond_0

    instance-of v7, p1, Ljava/util/Map$Entry;

    if-eqz v7, :cond_0

    move-object v1, p1

    .line 631
    check-cast v1, Ljava/util/Map$Entry;

    .line 632
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 633
    .local v4, "key":Ljava/lang/Object;
    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 634
    .local v2, "hash":I
    :goto_0
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v7, v7

    invoke-static {v2, v7}, Ljava/util/HashMap;->indexFor(II)I

    move-result v3

    .line 635
    .local v3, "i":I
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v6, v7, v3

    .line 636
    .local v6, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v6

    .line 638
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    .line 639
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 640
    .local v5, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v7, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/HashMap$HashMapEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 641
    iget v7, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/HashMap;->modCount:I

    .line 642
    iget v7, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/HashMap;->size:I

    .line 643
    if-ne v6, v0, :cond_2

    .line 644
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v7, v3

    .line 647
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordRemoval(Ljava/util/HashMap;)V

    .line 648
    return-object v0

    .line 629
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "hash":I
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v6    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    return-object v8

    .line 633
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v4    # "key":Ljava/lang/Object;
    :cond_1
    invoke-static {v4}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "hash":I
    goto :goto_0

    .line 646
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v3    # "i":I
    .restart local v5    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v6    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    iput-object v5, v6, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 650
    :cond_3
    move-object v6, v0

    .line 651
    move-object v0, v5

    goto :goto_1

    .line 654
    .end local v5    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_4
    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1477
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap$HashMapEntry;

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 1478
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eq v1, p2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1477
    if-eqz v2, :cond_1

    .line 1479
    :cond_0
    iput-object p3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 1480
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    .line 1481
    const/4 v2, 0x1

    return v2

    .line 1483
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_0

    .line 1374
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1375
    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    .line 1376
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    .line 1377
    .local v2, "mc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1378
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 1379
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 1378
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 1377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1382
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_3

    .line 1383
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1371
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    .prologue
    .line 504
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 505
    .local v2, "oldTable":[Ljava/util/HashMap$HashMapEntry;
    array-length v1, v2

    .line 506
    .local v1, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 507
    const v3, 0x7fffffff

    iput v3, p0, Ljava/util/HashMap;->threshold:I

    .line 508
    return-void

    .line 511
    :cond_0
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    .line 512
    .local v0, "newTable":[Ljava/util/HashMap$HashMapEntry;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->transfer([Ljava/util/HashMap$HashMapEntry;)V

    .line 513
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 514
    int-to-float v3, p1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x4e800000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Ljava/util/HashMap;->threshold:I

    .line 503
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method transfer([Ljava/util/HashMap$HashMapEntry;)V
    .locals 8
    .param p1, "newTable"    # [Ljava/util/HashMap$HashMapEntry;

    .prologue
    .line 521
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    array-length v2, p1

    .line 522
    .local v2, "newCapacity":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 523
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 524
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 525
    .local v3, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    invoke-static {v7, v2}, Ljava/util/HashMap;->indexFor(II)I

    move-result v1

    .line 526
    .local v1, "i":I
    aget-object v7, p1, v1

    iput-object v7, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 527
    aput-object v0, p1, v1

    .line 528
    move-object v0, v3

    goto :goto_1

    .line 522
    .end local v1    # "i":I
    .end local v3    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    return-void
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1240
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 1241
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$Values;)V

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
