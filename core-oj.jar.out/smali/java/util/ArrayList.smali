.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayList$ArrayListSpliterator;,
        Ljava/util/ArrayList$Itr;,
        Ljava/util/ArrayList$ListItr;,
        Ljava/util/ArrayList$SubList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xa

.field private static final EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/ArrayList;)I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/ArrayList;->size:I

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v3, v6, :cond_0

    aget-object v6, v0, v3

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, p2, :cond_7

    add-int/lit8 v4, v5, 0x1

    :try_start_1
    aget-object v6, v0, v3

    aput-object v6, v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v3, v6, :cond_6

    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v3

    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v3

    add-int v4, v5, v6

    :goto_2
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v4, v6, :cond_2

    move v1, v4

    :goto_3
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v6, :cond_1

    aput-object v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    iget v6, p0, Ljava/util/ArrayList;->modCount:I

    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    iput v6, p0, Ljava/util/ArrayList;->modCount:I

    iput v4, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x1

    :cond_2
    return v2

    :catchall_0
    move-exception v6

    move v4, v5

    :goto_4
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-eq v3, v7, :cond_3

    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v3

    invoke-static {v0, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v3

    add-int/2addr v4, v7

    :cond_3
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-eq v4, v7, :cond_5

    move v1, v4

    :goto_5
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v7, :cond_4

    aput-object v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    iget v8, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    iput v4, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x1

    :cond_5
    throw v6

    :catchall_1
    move-exception v6

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_1
.end method

.method private ensureCapacityInternal(I)V
    .locals 2

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v1, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    return-void
.end method

.method private ensureExplicitCapacity(I)V
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->grow(I)V

    :cond_0
    return-void
.end method

.method private fastRemove(I)V
    .locals 4

    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-void
.end method

.method private grow(I)V
    .locals 3

    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v2

    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    sub-int v2, v0, p1

    if-gez v2, :cond_0

    move v0, p1

    :cond_0
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {p1}, Ljava/util/ArrayList;->hugeCapacity(I)I

    move-result v0

    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

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

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lez v2, :cond_0

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {p0, v2}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static subListRangeCheck(III)V
    .locals 3

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-le p1, p2, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p0, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v0, :cond_1

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    aput-object p1, v0, v1

    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    iget v4, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    iget v4, p0, Ljava/util/ArrayList;->size:I

    sub-int v1, v4, p1

    if-lez v1, :cond_2

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int v6, p1, v2

    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v0, v3, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/ArrayList;->size:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public clear()V
    .locals 3

    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/ArrayList;->size:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/ArrayList;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-le p1, v0, :cond_0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v1, :cond_0

    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v4, v1, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-nez v1, :cond_0

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

    new-instance v0, Ljava/util/ArrayList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v2, p1

    iget v2, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    if-lez v0, :cond_1

    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/util/BitSet;

    iget v10, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {v8, v10}, Ljava/util/BitSet;-><init>(I)V

    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    iget v9, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    :goto_0
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v10, v2, :cond_1

    if-ge v3, v9, :cond_1

    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v10, v3

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v10, v2, :cond_2

    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    :cond_2
    if-lez v7, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_7

    sub-int v6, v9, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v9, :cond_4

    if-ge v4, v6, :cond_4

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v11, v11, v3

    aput-object v11, v10, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_2
    if-ge v5, v9, :cond_5

    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iput v6, p0, Ljava/util/ArrayList;->size:I

    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v10, v2, :cond_6

    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    :cond_6
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/util/ArrayList;->modCount:I

    :cond_7
    return v0
.end method

.method protected removeRange(II)V
    .locals 5

    if-ge p2, p1, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "toIndex < fromIndex"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int v2, v3, p2

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v3, p2, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int v4, p2, p1

    sub-int v1, v3, v4

    move v0, v1

    :goto_0
    iget v3, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Ljava/util/ArrayList;->size:I

    return-void
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v3, v0, :cond_1

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_1
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    new-instance v0, Ljava/util/ArrayList$SubList;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

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

    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-le v0, v1, :cond_1

    iget v0, p0, Ljava/util/ArrayList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method

.method public trimToSize()V
    .locals 2

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    iget v0, p0, Ljava/util/ArrayList;->size:I

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    :cond_0
    return-void
.end method
