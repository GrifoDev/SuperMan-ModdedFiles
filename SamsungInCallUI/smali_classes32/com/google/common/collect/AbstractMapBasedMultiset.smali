.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source."
    .end annotation
.end field


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$110(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 3

    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method private static getAndSet(Lcom/google/common/collect/Count;I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    goto :goto_0
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectStreamException"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    if-lez p2, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "occurrences cannot be negative: %s"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v5, Lcom/google/common/collect/Count;

    invoke-direct {v5, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    int-to-long v8, v1

    int-to-long v10, p2

    add-long v2, v8, v10

    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v2, v8

    if-gtz v4, :cond_3

    move v4, v5

    :goto_3
    const-string v7, "too many occurrences: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/google/common/collect/Count;->getAndAdd(I)I

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3
.end method

.method public clear()V
    .locals 4

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Count;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    goto :goto_0
.end method

.method distinctElements()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-lez p2, :cond_2

    move v3, v4

    :goto_1
    const-string v6, "occurrences cannot be negative: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v2

    if-le v2, p2, :cond_3

    move v1, p2

    :goto_2
    neg-int v3, v1

    invoke-virtual {v0, v3}, Lcom/google/common/collect/Count;->addAndGet(I)I

    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v5, v2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v1, v2

    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method setBackingMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v4, p2, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v3, Lcom/google/common/collect/Count;

    invoke-direct {v3, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
