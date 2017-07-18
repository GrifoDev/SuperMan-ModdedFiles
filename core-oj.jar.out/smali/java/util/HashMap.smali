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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    if-gez p1, :cond_0

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

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

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

    :cond_3
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    iput p1, p0, Ljava/util/HashMap;->threshold:I

    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

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

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    iget v0, p0, Ljava/util/HashMap;->threshold:I

    invoke-direct {p0, v0}, Ljava/util/HashMap;->inflateTable(I)V

    invoke-direct {p0, p1}, Ljava/util/HashMap;->putAllForCreate(Ljava/util/Map;)V

    return-void
.end method

.method private containsNullValue()Z
    .locals 4

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap$EntrySet;

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

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p0, Ljava/util/HashMap;->size:I

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v1, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    return-object v1

    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method static indexFor(II)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private inflateTable(I)V
    .locals 4

    invoke-static {p1}, Ljava/util/HashMap;->roundUpToPowerOf2(I)I

    move-result v0

    int-to-float v2, v0

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v1, v2, v3

    const/high16 v2, 0x4e800000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v1, 0x4e800000

    :cond_0
    float-to-int v2, v1

    iput v2, p0, Ljava/util/HashMap;->threshold:I

    new-array v2, v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

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

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

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

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/util/HashMap;->indexFor(II)I

    move-result v2

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v4, v2

    :goto_1
    if-eqz v0, :cond_3

    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v4, v1, :cond_2

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/util/HashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v2, v4

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    return-object v1

    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    invoke-virtual {p0, v4, v3, p1, v4}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/InvalidObjectException;

    const-string/jumbo v6, "Illegal load factor: 0.75"

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    sget-object v5, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    iput-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    if-gez v3, :cond_1

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

    :cond_1
    int-to-float v5, v3

    const v6, 0x3faaaaab

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x4e800000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v0, v5

    if-lez v3, :cond_2

    invoke-direct {p0, v0}, Ljava/util/HashMap;->inflateTable(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static roundUpToPowerOf2(I)I
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-lt p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    if-le v2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v3, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/HashMap;->threshold:I

    invoke-static {v2}, Ljava/util/HashMap;->roundUpToPowerOf2(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_0
    iget v2, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v2, p0, Ljava/util/HashMap;->size:I

    if-lez v2, :cond_1

    invoke-direct {p0}, Ljava/util/HashMap;->entrySet0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/HashMap;->size:I

    iget v1, p0, Ljava/util/HashMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v0, p4

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->resize(I)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/HashMap;->indexFor(II)I

    move-result p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/HashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method capacity()I
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v4, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-eq v3, v4, :cond_0

    iget v3, p0, Ljava/util/HashMap;->size:I

    int-to-float v3, v3

    const v4, 0x3faaaaab

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4e800000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;->inflateTable(I)V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    iput v6, v2, Ljava/util/HashMap;->modCount:I

    iput v6, v2, Ljava/util/HashMap;->size:I

    invoke-virtual {v2}, Ljava/util/HashMap;->init()V

    invoke-direct {v2, p0}, Ljava/util/HashMap;->putAllForCreate(Ljava/util/Map;)V

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

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

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/util/HashMap;->containsNullValue()Z

    move-result v3

    return v3

    :cond_0
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v1, p4

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    new-instance v2, Ljava/util/HashMap$HashMapEntry;

    invoke-direct {v2, p1, p2, p3, v0}, Ljava/util/HashMap$HashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    aput-object v2, v1, p4

    iget v1, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/HashMap;->size:I

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

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    if-eqz v3, :cond_3

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/util/HashMap;->getForNullKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget v3, p0, Ljava/util/HashMap;->size:I

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/util/HashMap;->indexFor(II)I

    move-result v4

    aget-object v0, v3, v4

    :goto_1
    if-eqz v0, :cond_4

    iget v3, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v3, v1, :cond_3

    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method init()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap$KeySet;

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$KeySet;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method loadFactor()F
    .locals 1

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

    const/4 v7, 0x0

    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v6, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-ne v5, v6, :cond_0

    iget v5, p0, Ljava/util/HashMap;->threshold:I

    invoke-direct {p0, v5}, Ljava/util/HashMap;->inflateTable(I)V

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Ljava/util/HashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v5

    invoke-static {v1, v5}, Ljava/util/HashMap;->indexFor(II)I

    move-result v2

    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v0, v5, v2

    :goto_0
    if-eqz v0, :cond_4

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_3

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    return-object v4

    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    :cond_4
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

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

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v6, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    if-ne v5, v6, :cond_1

    int-to-float v5, v3

    mul-float/2addr v5, v7

    iget v6, p0, Ljava/util/HashMap;->threshold:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5}, Ljava/util/HashMap;->inflateTable(I)V

    :cond_1
    iget v5, p0, Ljava/util/HashMap;->threshold:I

    if-le v3, v5, :cond_4

    int-to-float v5, v3

    div-float/2addr v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-le v4, v5, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    :cond_2
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v5

    :goto_0
    if-ge v2, v4, :cond_3

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v5

    if-le v2, v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->resize(I)V

    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    iget v6, p0, Ljava/util/HashMap;->size:I

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v6, v6

    invoke-static {v1, v6}, Ljava/util/HashMap;->indexFor(II)I

    move-result v2

    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v5, v6, v2

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v1, :cond_4

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    if-ne v5, v0, :cond_3

    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aput-object v4, v6, v2

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordRemoval(Ljava/util/HashMap;)V

    return-object v0

    :cond_2
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_3
    iput-object v4, v5, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    :cond_4
    move-object v5, v0

    move-object v0, v4

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method final removeMapping(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v8, 0x0

    iget v7, p0, Ljava/util/HashMap;->size:I

    if-eqz v7, :cond_0

    instance-of v7, p1, Ljava/util/Map$Entry;

    if-eqz v7, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v7, v7

    invoke-static {v2, v7}, Ljava/util/HashMap;->indexFor(II)I

    move-result v3

    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v6, v7, v3

    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_4

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v7, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/HashMap$HashMapEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/HashMap;->modCount:I

    iget v7, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/HashMap;->size:I

    if-ne v6, v0, :cond_2

    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v7, v3

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordRemoval(Ljava/util/HashMap;)V

    return-object v0

    :cond_0
    return-object v8

    :cond_1
    invoke-static {v4}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_2
    iput-object v5, v6, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    :cond_3
    move-object v6, v0

    move-object v0, v5

    goto :goto_1

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

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap$HashMapEntry;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-eq v1, p2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iput-object p3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    const/4 v2, 0x1

    return v2

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

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    if-eqz v3, :cond_3

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_3

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_3
    return-void
.end method

.method resize(I)V
    .locals 5

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    const v3, 0x7fffffff

    iput v3, p0, Ljava/util/HashMap;->threshold:I

    return-void

    :cond_0
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->transfer([Ljava/util/HashMap$HashMapEntry;)V

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    int-to-float v3, p1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    const/high16 v4, 0x4e800000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Ljava/util/HashMap;->threshold:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method transfer([Ljava/util/HashMap$HashMapEntry;)V
    .locals 8

    array-length v2, p1

    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    invoke-static {v7, v2}, Ljava/util/HashMap;->indexFor(II)I

    move-result v1

    aget-object v7, p1, v1

    iput-object v7, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v0, p1, v1

    move-object v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap$Values;

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$Values;)V

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
