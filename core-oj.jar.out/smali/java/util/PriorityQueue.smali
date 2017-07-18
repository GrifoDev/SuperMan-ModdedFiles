.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$Itr;,
        Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient queue:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    instance-of v2, p1, Ljava/util/SortedSet;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    :goto_0
    return-void

    :cond_0
    instance-of v2, p1, Ljava/util/PriorityQueue;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    return-void
.end method

.method private grow(I)V
    .locals 3

    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v1, v2

    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x2

    :goto_0
    add-int v0, v1, v2

    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {p1}, Ljava/util/PriorityQueue;->hugeCapacity(I)I

    move-result v0

    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    return-void

    :cond_1
    shr-int/lit8 v2, v1, 0x1

    goto :goto_0
.end method

.method private heapify()V
    .locals 2

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1

    const v0, 0x7ffffff7

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    if-le p0, v0, :cond_1

    const v0, 0x7fffffff

    :cond_1
    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private initElementsFromCollection(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    array-length v3, v0

    const-class v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_3

    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v3, v0

    iput v3, p0, Ljava/util/PriorityQueue;->size:I

    return-void
.end method

.method private initFromCollection(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    return-void
.end method

.method private initFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/PriorityQueue;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    return-void
.end method

.method private siftDown(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private siftDownComparable(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    move-object v3, p2

    check-cast v3, Ljava/lang/Comparable;

    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v2, v5, 0x1

    :goto_0
    if-ge p1, v2, :cond_1

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v1, v5, 0x1

    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v5, v1

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v4, v5, :cond_0

    move-object v5, v0

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move v1, v4

    aget-object v0, v5, v4

    :cond_0
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2

    :cond_1
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v5, p1

    return-void

    :cond_2
    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v5, p1

    move p1, v1

    goto :goto_0
.end method

.method private siftDownUsingComparator(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v4, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v2, v4, 0x1

    :goto_0
    if-ge p1, v2, :cond_1

    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v1, v4, 0x1

    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v4, v1

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-interface {v4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move v1, v3

    aget-object v0, v4, v3

    :cond_0
    iget-object v4, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v4, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p2, v4, p1

    return-void

    :cond_2
    iget-object v4, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v4, p1

    move p1, v1

    goto :goto_0
.end method

.method private siftUp(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpUsingComparator(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpComparable(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private siftUpComparable(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    ushr-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v3, v2

    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    :cond_0
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v1, v3, p1

    return-void

    :cond_1
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v3, p1

    move p1, v2

    goto :goto_0
.end method

.method private siftUpUsingComparator(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v2, v1

    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p2, v2, p1

    return-void

    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v2, p1

    move p1, v1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/PriorityQueue$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$Itr;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->modCount:I

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/util/PriorityQueue;->grow(I)V

    :cond_1
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    if-nez v0, :cond_2

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p1, v1, v2

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    iget v3, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v3, -0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    iget v3, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/PriorityQueue;->modCount:I

    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v3, v4

    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v3, v1

    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v5, v3, v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v4, v2}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method removeAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v3, 0x0

    iget v2, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/PriorityQueue;->modCount:I

    iget v2, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ne v1, p1, :cond_1

    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v2, p1

    :cond_0
    return-object v3

    :cond_1
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v2, v1

    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-ne v2, v0, :cond_0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-eq v2, v0, :cond_0

    return-object v0
.end method

.method removeEq(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    array-length v1, p1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method
