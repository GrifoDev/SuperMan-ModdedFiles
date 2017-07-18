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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/WeakHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    if-gez p1, :cond_0

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

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

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

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_4

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    iput p2, p0, Ljava/util/WeakHashMap;->loadFactor:F

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Ljava/util/WeakHashMap;->threshold:I

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

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;-><init>(IF)V

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private containsNullValue()Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    array-length v1, v3

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_2

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

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

    :goto_0
    iget-object v7, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v8, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v8

    :try_start_0
    move-object v0, v6

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    move-object v1, v0

    iget v7, v1, Ljava/util/WeakHashMap$Entry;->hash:I

    iget-object v9, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v9, v9

    invoke-static {v7, v9}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aget-object v5, v7, v2

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_0

    iget-object v3, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    if-ne v4, v1, :cond_2

    if-ne v5, v1, :cond_1

    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aput-object v3, v7, v2

    :goto_2
    const/4 v7, 0x0

    iput-object v7, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    goto :goto_0

    :cond_1
    :try_start_1
    iput-object v3, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_2
    move-object v5, v4

    move-object v4, v3

    goto :goto_1

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

    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private static indexFor(II)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private newTable(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

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

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    aget-object v0, p1, v2

    aput-object v7, p1, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iget v5, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/WeakHashMap;->size:I

    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_0
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    array-length v6, p2

    invoke-static {v5, v6}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v1

    aget-object v5, p2, v1

    iput-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v0, p2, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

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

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/util/WeakHashMap;->containsNullValue()Z

    move-result v4

    return v4

    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    array-length v1, v3

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_3

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$EntrySet;

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

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-eq v1, v6, :cond_0

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    array-length v5, v4

    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    aget-object v0, v4, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v5

    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    array-length v5, v4

    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    aget-object v0, v4, v2

    :goto_0
    if-eqz v0, :cond_0

    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$KeySet;

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

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v8

    array-length v0, v8

    invoke-static {v4, v0}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v6

    aget-object v5, v8, v6

    :goto_0
    if-eqz v5, :cond_2

    iget v0, v5, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v4, v0, :cond_1

    invoke-virtual {v5}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-eq p2, v7, :cond_0

    iput-object p2, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    :cond_0
    return-object v7

    :cond_1
    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_2
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    aget-object v5, v8, v6

    new-instance v0, Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V

    aput-object v0, v8, v6

    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    iget v2, p0, Ljava/util/WeakHashMap;->threshold:I

    if-lt v0, v2, :cond_3

    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->resize(I)V

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

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v3, v5, :cond_3

    int-to-float v5, v3

    iget v6, p0, Ljava/util/WeakHashMap;->loadFactor:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-le v4, v5, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    :cond_1
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v5

    :goto_0
    if-ge v2, v4, :cond_2

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v5

    if-le v2, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->resize(I)V

    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v6

    array-length v7, v6

    invoke-static {v1, v7}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    aget-object v5, v6, v2

    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iget v7, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v1, v7, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/WeakHashMap;->modCount:I

    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    if-ne v5, v0, :cond_0

    aput-object v4, v6, v2

    :goto_1
    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v7

    :cond_0
    iput-object v4, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_1
    move-object v5, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    return-object v8
.end method

.method removeMapping(Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x0

    instance-of v8, p1, Ljava/util/Map$Entry;

    if-nez v8, :cond_0

    return v9

    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v7

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    move-result v2

    array-length v8, v7

    invoke-static {v2, v8}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    aget-object v6, v7, v3

    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_3

    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iget v8, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v2, v8, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/WeakHashMap;->modCount:I

    iget v8, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/util/WeakHashMap;->size:I

    if-ne v6, v0, :cond_1

    aput-object v5, v7, v3

    :goto_1
    const/4 v8, 0x1

    return v8

    :cond_1
    iput-object v5, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_2
    move-object v6, v0

    move-object v0, v5

    goto :goto_0

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

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-eq v1, v6, :cond_0

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method resize(I)V
    .locals 5

    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    array-length v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    const v3, 0x7fffffff

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    iget v3, p0, Ljava/util/WeakHashMap;->size:I

    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_1

    int-to-float v3, p1

    iget v4, p0, Ljava/util/WeakHashMap;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    iput-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$Values;

    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Values;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
