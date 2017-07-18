.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$EntryIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedHashMapEntry;,
        Ljava/util/LinkedHashMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field private transient header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/LinkedHashMap;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return v0
.end method

.method static synthetic -get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .locals 1

    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v2, :cond_0

    iget v2, p0, Ljava/util/LinkedHashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedHashMap;->size:I

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    iget v2, p0, Ljava/util/LinkedHashMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedHashMap;->size:I

    if-eqz v1, :cond_0

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v2

    iget v3, p0, Ljava/util/LinkedHashMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/LinkedHashMap;->size:I

    throw v2
.end method

.method public clear()V
    .locals 3

    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v1, :cond_3

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_1
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v1, :cond_3

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v1, v2, p4

    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    iget-object v2, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aput-object v0, v2, p4

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-static {v0, v2}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->-wrap0(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    iget v2, p0, Ljava/util/LinkedHashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedHashMap;->size:I

    return-void
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
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

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    return-object v1
.end method

.method init()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2, v2}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-void
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

    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$EntryIterator;)V

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

    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$KeyIterator;)V

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

    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$ValueIterator;)V

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    return-void
.end method

.method transfer([Ljava/util/HashMap$HashMapEntry;)V
    .locals 4

    array-length v2, p1

    iget-object v3, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v0, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    :goto_0
    iget-object v3, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eq v0, v3, :cond_0

    iget v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->hash:I

    invoke-static {v3, v2}, Ljava/util/LinkedHashMap;->indexFor(II)I

    move-result v1

    aget-object v3, p1, v1

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v0, p1, v1

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_0

    :cond_0
    return-void
.end method
