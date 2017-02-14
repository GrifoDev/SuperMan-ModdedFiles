.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Vector$Itr;,
        Ljava/util/Vector$ListItr;,
        Ljava/util/Vector$VectorSpliterator;
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
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Vector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
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

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

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

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/Vector;->elementCount:I

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureCapacityHelper(I)V
    .locals 1

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)V

    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 3

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v2

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-lez v2, :cond_2

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    :goto_0
    add-int v0, v1, v2

    sub-int v2, v0, p1

    if-gez v2, :cond_0

    move v0, p1

    :cond_0
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {p1}, Ljava/util/Vector;->hugeCapacity(I)I

    move-result v0

    :cond_1
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    return-void

    :cond_2
    move v2, v1

    goto :goto_0
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "capacityIncrement"

    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "elementCount"

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const-string/jumbo v2, "elementData"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget v4, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Vector;->modCount:I

    if-ltz p1, :cond_0

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v4, p1

    if-lez v1, :cond_2

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int v6, p1, v2

    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    monitor-exit p0

    return v3
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v3, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Vector;->modCount:I

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyInto([Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method elementData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 1

    monitor-enter p0

    if-lez p1, :cond_0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->modCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v2, :cond_0

    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-eq v4, v2, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_1

    move v0, p2

    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertElementAt(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-lt p2, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    if-nez p1, :cond_2

    move v0, p2

    :goto_0
    if-ltz v0, :cond_4

    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_1
    if-ltz v0, :cond_4

    :try_start_2
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/Vector$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v2, :cond_0

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    if-lez v0, :cond_1

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllElements()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    invoke-virtual {p0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    if-gez p1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    if-lez v0, :cond_2

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeIf(Ljava/util/function/Predicate;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    iget v9, p0, Ljava/util/Vector;->elementCount:I

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v9}, Ljava/util/BitSet;-><init>(I)V

    iget v2, p0, Ljava/util/Vector;->modCount:I

    const/4 v3, 0x0

    :goto_0
    iget v10, p0, Ljava/util/Vector;->modCount:I

    if-ne v10, v2, :cond_1

    if-ge v3, v9, :cond_1

    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

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
    iget v10, p0, Ljava/util/Vector;->modCount:I

    if-eq v10, v2, :cond_2

    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v10

    monitor-exit p0

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

    :try_start_1
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v11, v11, v3

    aput-object v11, v10, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_2
    if-ge v5, v9, :cond_5

    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iput v6, p0, Ljava/util/Vector;->elementCount:I

    iget v10, p0, Ljava/util/Vector;->modCount:I

    if-eq v10, v2, :cond_6

    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    :cond_6
    iget v10, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized removeRange(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v2, p2

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, p2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v3, p2, p1

    sub-int v0, v2, v3

    :goto_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava/util/Vector;->modCount:I

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Ljava/util/Vector;->modCount:I

    if-ne v3, v0, :cond_0

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Ljava/util/Vector;->modCount:I

    if-eq v3, v0, :cond_1

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget v3, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSize(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le p1, v1, :cond_1

    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    :cond_0
    iput p1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    move v0, p1

    :goto_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sort(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget v1, p0, Ljava/util/Vector;->modCount:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    return-object v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, v1, :cond_1

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
