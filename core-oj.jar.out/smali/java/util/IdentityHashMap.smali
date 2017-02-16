.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$EntryIterator;,
        Ljava/util/IdentityHashMap$EntrySet;,
        Ljava/util/IdentityHashMap$EntrySpliterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;,
        Ljava/util/IdentityHashMap$KeyIterator;,
        Ljava/util/IdentityHashMap$KeySet;,
        Ljava/util/IdentityHashMap$KeySpliterator;,
        Ljava/util/IdentityHashMap$ValueIterator;,
        Ljava/util/IdentityHashMap$ValueSpliterator;,
        Ljava/util/IdentityHashMap$Values;
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
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20

.field private static final MAXIMUM_CAPACITY:I = 0x20000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final NULL_KEY:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


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

.field private transient modCount:I

.field private size:I

.field private transient table:[Ljava/lang/Object;

.field private transient threshold:I


# direct methods
.method static synthetic -get0(Ljava/util/IdentityHashMap;)I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    return v0
.end method

.method static synthetic -get1(Ljava/util/IdentityHashMap;)I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/IdentityHashMap;I)I
    .locals 0

    iput p1, p0, Ljava/util/IdentityHashMap;->modCount:I

    return p1
.end method

.method static synthetic -set1(Ljava/util/IdentityHashMap;I)I
    .locals 0

    iput p1, p0, Ljava/util/IdentityHashMap;->size:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "length"    # I

    .prologue
    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 211
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 212
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    .line 211
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "expectedMaxSize"    # I

    .prologue
    .line 224
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 225
    if-gez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expectedMaxSize is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 279
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 276
    return-void
.end method

.method private capacity(I)I
    .locals 3
    .param p1, "expectedMaxSize"    # I

    .prologue
    .line 241
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v0, v2, 0x2

    .line 245
    .local v0, "minCapacity":I
    const/high16 v2, 0x20000000

    if-gt v0, v2, :cond_0

    if-gez v0, :cond_2

    .line 246
    :cond_0
    const/high16 v1, 0x20000000

    .line 252
    .local v1, "result":I
    :cond_1
    return v1

    .line 248
    .end local v1    # "result":I
    :cond_2
    const/4 v1, 0x4

    .line 249
    .restart local v1    # "result":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 250
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private closeDeletion(I)V
    .locals 8
    .param p1, "d"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 589
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 590
    .local v4, "tab":[Ljava/lang/Object;
    array-length v2, v4

    .line 597
    .local v2, "len":I
    invoke-static {p1, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 605
    invoke-static {v1, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 606
    .local v3, "r":I
    if-ge v0, v3, :cond_2

    if-le v3, p1, :cond_0

    if-gt p1, v0, :cond_2

    .line 607
    :cond_0
    :goto_1
    aput-object v1, v4, p1

    .line 608
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    aput-object v6, v4, v5

    .line 609
    aput-object v7, v4, v0

    .line 610
    add-int/lit8 v5, v0, 0x1

    aput-object v7, v4, v5

    .line 611
    move p1, v0

    .line 598
    :cond_1
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    .line 606
    :cond_2
    if-gt v3, p1, :cond_1

    if-gt p1, v0, :cond_1

    goto :goto_1

    .line 587
    .end local v3    # "r":I
    :cond_3
    return-void
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 402
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 403
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 404
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 405
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 407
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 408
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_1

    .line 409
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    if-ne v6, p2, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 410
    :cond_1
    if-nez v1, :cond_2

    .line 411
    return v5

    .line 412
    :cond_2
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private static hash(Ljava/lang/Object;I)I
    .locals 3
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "length"    # I

    .prologue
    .line 306
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 308
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    return v1
.end method

.method private init(I)V
    .locals 1
    .param p1, "initCapacity"    # I

    .prologue
    .line 265
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 266
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 260
    return-void
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 197
    if-nez p0, :cond_0

    sget-object p0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method private static nextKeyIndex(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    .line 315
    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, p0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1330
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1331
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 1332
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 1335
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 1336
    if-ne v1, v2, :cond_0

    .line 1337
    new-instance v5, Ljava/io/StreamCorruptedException;

    invoke-direct {v5}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v5

    .line 1338
    :cond_0
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    .line 1340
    :cond_1
    aput-object v2, v4, v0

    .line 1341
    add-int/lit8 v5, v0, 0x1

    aput-object p2, v4, v5

    .line 1327
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1304
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1307
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1310
    .local v2, "size":I
    mul-int/lit8 v4, v2, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->init(I)V

    .line 1313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1315
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1317
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1318
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v1, v3}, Ljava/util/IdentityHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 557
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 558
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 559
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 560
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 563
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 564
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_1

    .line 565
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    if-eq v5, p2, :cond_0

    .line 566
    return v7

    .line 567
    :cond_0
    iget v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 568
    iget v5, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->size:I

    .line 569
    aput-object v6, v4, v0

    .line 570
    add-int/lit8 v5, v0, 0x1

    aput-object v6, v4, v5

    .line 571
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    .line 572
    const/4 v5, 0x1

    return v5

    .line 574
    :cond_1
    if-nez v1, :cond_2

    .line 575
    return v7

    .line 576
    :cond_2
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private resize(I)V
    .locals 11
    .param p1, "newCapacity"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const v10, 0x1fffffff

    const/4 v9, 0x0

    .line 463
    mul-int/lit8 v3, p1, 0x2

    .line 465
    .local v3, "newLength":I
    iget-object v6, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 466
    .local v6, "oldTable":[Ljava/lang/Object;
    array-length v5, v6

    .line 467
    .local v5, "oldLength":I
    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v8, :cond_1

    .line 468
    iget v8, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-ne v8, v10, :cond_0

    .line 469
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Capacity exhausted."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 470
    :cond_0
    iput v10, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 471
    return-void

    .line 473
    :cond_1
    if-lt v5, v3, :cond_2

    .line 474
    return-void

    .line 476
    :cond_2
    new-array v4, v3, [Ljava/lang/Object;

    .line 477
    .local v4, "newTable":[Ljava/lang/Object;
    div-int/lit8 v8, v3, 0x3

    iput v8, p0, Ljava/util/IdentityHashMap;->threshold:I

    .line 479
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 480
    aget-object v2, v6, v1

    .line 481
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 482
    add-int/lit8 v8, v1, 0x1

    aget-object v7, v6, v8

    .line 483
    .local v7, "value":Ljava/lang/Object;
    aput-object v9, v6, v1

    .line 484
    add-int/lit8 v8, v1, 0x1

    aput-object v9, v6, v8

    .line 485
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 486
    .local v0, "i":I
    :goto_1
    aget-object v8, v4, v0

    if-eqz v8, :cond_3

    .line 487
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_1

    .line 488
    :cond_3
    aput-object v2, v4, v0

    .line 489
    add-int/lit8 v8, v0, 0x1

    aput-object v7, v4, v8

    .line 479
    .end local v0    # "i":I
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 492
    .end local v2    # "key":Ljava/lang/Object;
    :cond_5
    iput-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 461
    return-void
.end method

.method private static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 204
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
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
    .line 1281
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1284
    iget v3, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1287
    iget-object v2, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1288
    .local v2, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1289
    aget-object v1, v2, v0

    .line 1290
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1291
    invoke-static {v1}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1292
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1288
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1279
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 621
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v2, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 622
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 623
    .local v1, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 624
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    .line 620
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 709
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/IdentityHashMap;

    .line 710
    .local v1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 711
    iget-object v2, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    return-object v1

    .line 713
    .end local v1    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 361
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 362
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 363
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 364
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 366
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 367
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_0

    .line 368
    const/4 v5, 0x1

    return v5

    .line 369
    :cond_0
    if-nez v1, :cond_1

    .line 370
    const/4 v5, 0x0

    return v5

    .line 371
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 385
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 386
    .local v1, "tab":[Ljava/lang/Object;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 387
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    if-eqz v2, :cond_0

    .line 388
    const/4 v2, 0x1

    return v2

    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 390
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 1181
    iget-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 1182
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 1183
    return-object v0

    .line 1185
    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$EntrySet;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntrySet;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 646
    if-ne p1, p0, :cond_0

    .line 647
    return v8

    .line 648
    :cond_0
    instance-of v5, p1, Ljava/util/IdentityHashMap;

    if-eqz v5, :cond_5

    move-object v2, p1

    .line 649
    check-cast v2, Ljava/util/IdentityHashMap;

    .line 650
    .local v2, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->size()I

    move-result v5

    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    if-eq v5, v6, :cond_1

    .line 651
    return v7

    .line 653
    :cond_1
    iget-object v4, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 654
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 655
    aget-object v1, v4, v0

    .line 656
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    invoke-direct {p0, v1, v5}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 654
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 657
    :cond_3
    return v7

    .line 659
    .end local v1    # "k":Ljava/lang/Object;
    :cond_4
    return v8

    .line 660
    .end local v0    # "i":I
    .end local v2    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    .end local v4    # "tab":[Ljava/lang/Object;
    :cond_5
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_6

    move-object v3, p1

    .line 661
    check-cast v3, Ljava/util/Map;

    .line 662
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 664
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    return v7
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
    .line 1347
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1350
    .local v0, "expectedModCount":I
    iget-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1351
    .local v3, "t":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1352
    aget-object v2, v3, v1

    .line 1353
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1354
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v3, v5

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1357
    :cond_0
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v4, v0, :cond_1

    .line 1358
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1351
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1346
    .end local v2    # "k":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 337
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 338
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 339
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 340
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 342
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 343
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_0

    .line 344
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    return-object v5

    .line 345
    :cond_0
    if-nez v1, :cond_1

    .line 346
    return-object v5

    .line 347
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 688
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 689
    .local v3, "result":I
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 690
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 691
    aget-object v2, v4, v0

    .line 692
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 693
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 694
    .local v1, "k":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 695
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 694
    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 690
    .end local v1    # "k":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 698
    .end local v2    # "key":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 299
    iget v1, p0, Ljava/util/IdentityHashMap;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 973
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .line 974
    return-object v0

    .line 976
    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$KeySet;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeySet;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 432
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 433
    .local v2, "k":Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 434
    .local v5, "tab":[Ljava/lang/Object;
    array-length v3, v5

    .line 435
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 438
    .local v0, "i":I
    :goto_0
    aget-object v1, v5, v0

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 439
    if-ne v1, v2, :cond_0

    .line 441
    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    .line 442
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v6, v0, 0x1

    aput-object p2, v5, v6

    .line 443
    return-object v4

    .line 445
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    .line 448
    :cond_1
    iget v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 449
    aput-object v2, v5, v0

    .line 450
    add-int/lit8 v6, v0, 0x1

    aput-object p2, v5, v6

    .line 451
    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->size:I

    iget v7, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-lt v6, v7, :cond_2

    .line 452
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->resize(I)V

    .line 453
    :cond_2
    return-object v8
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 505
    .local v2, "n":I
    if-nez v2, :cond_0

    .line 506
    return-void

    .line 507
    :cond_0
    iget v3, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-le v2, v3, :cond_1

    .line 508
    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->resize(I)V

    .line 510
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 511
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 503
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 524
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 525
    .local v2, "k":Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 526
    .local v5, "tab":[Ljava/lang/Object;
    array-length v3, v5

    .line 527
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 530
    .local v0, "i":I
    :goto_0
    aget-object v1, v5, v0

    .line 531
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_0

    .line 532
    iget v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 533
    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->size:I

    .line 535
    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    .line 536
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v6, v0, 0x1

    aput-object v7, v5, v6

    .line 537
    aput-object v7, v5, v0

    .line 538
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    .line 539
    return-object v4

    .line 541
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    if-nez v1, :cond_1

    .line 542
    return-object v7

    .line 543
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1369
    .local v0, "expectedModCount":I
    iget-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1370
    .local v3, "t":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1371
    aget-object v2, v3, v1

    .line 1372
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1373
    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1376
    :cond_0
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v4, v0, :cond_1

    .line 1377
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1370
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1365
    .end local v2    # "k":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 1077
    iget-object v0, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    .line 1078
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 1079
    return-object v0

    .line 1081
    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$Values;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$Values;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    return-object v1
.end method
